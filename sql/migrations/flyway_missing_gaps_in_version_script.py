import os
import re

# Regex to match Flyway versioned files (two underscores are common in Flyway)
pattern = re.compile(r'^V(\d+)__([^.]+)\.sql$')

# Get all .sql files in current directory
files = [f for f in os.listdir('.') if f.endswith('.sql')]

# Parse files into (version, description, filename)
parsed_files = []
for f in files:
    match = pattern.match(f)
    if match:
        version = int(match.group(1))
        description = match.group(2)
        parsed_files.append((version, description, f))

# Sort files by version
parsed_files.sort(key=lambda x: x[0])

# Renaming logic to remove gaps
expected_version = parsed_files[0][0] if parsed_files else 1
for version, description, filename in parsed_files:
    if version != expected_version:
        new_name = f"V{expected_version}__{description}.sql"
        print(f"Renaming '{filename}' -> '{new_name}'")
        os.rename(filename, new_name)
    expected_version += 1
