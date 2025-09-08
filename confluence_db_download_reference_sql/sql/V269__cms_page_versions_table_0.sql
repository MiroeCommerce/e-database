CREATE TABLE cms_page_versions (
    version_id SERIAL PRIMARY KEY,
    page_id INT NOT NULL, -- references cms_pages
    version_number INT NOT NULL,
    content TEXT NOT NULL,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);