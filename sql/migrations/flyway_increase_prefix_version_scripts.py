import os
import re

# Regex to match Flyway versioned files
pattern = re.compile(r'^V(\d+)_([^.]+)\.sql$')

# Get all files in current directory
files = [f for f in os.listdir('.') if f.endswith('.sql')]

# Parse files into a list of (version, description, filename)
parsed_files = []
for f in files:
    match = pattern.match(f)
    if match:
        version = int(match.group(1))
        description = match.group(2)
        parsed_files.append((version, description, f))

# Sort files by version
parsed_files.sort(key=lambda x: x[0])

# Renaming logic
used_versions = set()
for i, (version, description, filename) in enumerate(parsed_files):
    original_version = version
    while version in used_versions:
        version += 1
    used_versions.add(version)
    
    if version != original_version:
        new_name = f"V{version}_{description}.sql"
        print(f"Renaming '{filename}' -> '{new_name}'")
        os.rename(filename, new_name)
