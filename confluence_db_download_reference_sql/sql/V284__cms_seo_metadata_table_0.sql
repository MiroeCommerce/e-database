CREATE TABLE cms_seo_metadata (
    seo_id SERIAL PRIMARY KEY,
    content_type VARCHAR(50) NOT NULL, -- e.g., page, product
    content_id INT NOT NULL, -- ID of the content item
    meta_title VARCHAR(255),
    meta_description TEXT,
    meta_keywords VARCHAR(500),
    canonical_url VARCHAR(500),
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);