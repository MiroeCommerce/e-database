CREATE TABLE cms_pages (
    page_id SERIAL PRIMARY KEY,
    page_title VARCHAR(255) NOT NULL,
    page_slug VARCHAR(255) UNIQUE NOT NULL,
    template_id INT,
    status VARCHAR(50) DEFAULT 'Draft', -- Draft, Published, Archived
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);