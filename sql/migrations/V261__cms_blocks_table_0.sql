CREATE TABLE cms_blocks (
    block_id SERIAL PRIMARY KEY,
    block_name VARCHAR(255) NOT NULL,
    block_type VARCHAR(100) NOT NULL, -- e.g., text, banner, CTA
    content TEXT,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);