CREATE TABLE cms_tags (
    tag_id SERIAL PRIMARY KEY,
    tag_name VARCHAR(255) NOT NULL,
    description TEXT,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);