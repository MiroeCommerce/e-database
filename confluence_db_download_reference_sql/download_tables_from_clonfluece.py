import os
import re
import requests
from datetime import datetime

# === CONFIGURATION ===
BASE_URL = "https://{confluence.site}.atlassian.net/wiki/rest/api"
USERNAME = "email"
API_TOKEN = "Confluence API Key" 
ROOT_PAGE_ID = "1277962"            # Tables page
OUTPUT_DIR = "./sql"
LOG_FILE = "./confluence_sql_export.log"

os.makedirs(OUTPUT_DIR, exist_ok=True)
auth = (USERNAME, API_TOKEN)

# Keep track of all investigated pages
investigated_pages = []

# Keep a global counter for migration version numbers
migration_counter = 1


def log(message):
    """Write message to console and log file with timestamp"""
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    line = f"[{timestamp}] {message}"
    print(line)
    with open(LOG_FILE, "a") as f:
        f.write(line + "\n")


def get_page(page_id):
    """Fetch a page with its storage (HTML) and children"""
    url = f"{BASE_URL}/content/{page_id}?expand=body.storage,children.page"
    r = requests.get(url, auth=auth)
    r.raise_for_status()
    return r.json()


def split_create_table_blocks(sql_block):
    """Split SQL into separate CREATE TABLE statements"""
    pattern = re.compile(r'CREATE\s+TABLE', re.IGNORECASE)
    matches = list(pattern.finditer(sql_block))

    statements = []
    for i, match in enumerate(matches):
        start = match.start()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(sql_block)
        stmt = sql_block[start:end].strip()
        if stmt:
            statements.append(stmt)
    return statements


def sanitize_description(title, idx=None):
    """Make a Flyway-compatible description from Confluence title"""
    desc = re.sub(r'[^a-zA-Z0-9]+', '_', title).strip('_').lower()
    if idx is not None:
        desc = f"{desc}_{idx}"
    return desc


def extract_sql_snippets(title, html):
    """Extract SQL and save in Flyway naming convention"""
    global migration_counter

    regex = r'<ac:structured-macro ac:name="code"[\s\S]*?<ac:plain-text-body><!\[CDATA\[(.*?)\]\]></ac:plain-text-body>'
    matches = re.findall(regex, html, re.DOTALL)

    if not matches:
        log(f"No code blocks found in page: {title}")

    for match in matches:
        sql = match.strip()
        preview = sql[:100].replace("\n", " ")
        log(f"Found code block in page: {title}, preview: {preview}...")

        if "CREATE TABLE" in sql.upper():
            tables = split_create_table_blocks(sql)
            for idx, table_sql in enumerate(tables):
                desc = sanitize_description(title, idx)
                filename = os.path.join(
                    OUTPUT_DIR,
                    f"V{migration_counter}__{desc}.sql"
                )
                with open(filename, "w") as f:
                    f.write(table_sql)
                log(f"Saved: {filename}")
                migration_counter += 1


def process_page(page_id):
    """Process page and recursively all subpages"""
    try:
        data = get_page(page_id)
        title = data.get("title", "")
        html = data.get("body", {}).get("storage", {}).get("value", "")

        investigated_pages.append(title)
        extract_sql_snippets(title, html)

        children = data.get("children", {}).get("page", {}).get("results", [])
        for child in children:
            process_page(child["id"])
    except Exception as e:
        log(f" Error processing page {page_id}: {e}")


if __name__ == "__main__":
    log("=== Starting Confluence SQL Export ===")
    process_page(ROOT_PAGE_ID)
    log(" Done! All SQL snippets extracted.")

    total_pages = len(investigated_pages)
    log(f"Total pages investigated: {total_pages}")
    log(" List of all pages investigated:")
    for title in investigated_pages:
        log(f" - {title}")

    print(f"\n Total pages investigated: {total_pages}")
