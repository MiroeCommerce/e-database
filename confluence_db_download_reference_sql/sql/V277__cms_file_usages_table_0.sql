CREATE TABLE cms_file_usages (
    usage_id SERIAL PRIMARY KEY,
    file_id INT NOT NULL, -- references cms_files
    content_type VARCHAR(50) NOT NULL, -- e.g., page, banner, slider
    content_id INT NOT NULL, -- ID of the related content
    usage_context VARCHAR(255), -- optional description of usage
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);