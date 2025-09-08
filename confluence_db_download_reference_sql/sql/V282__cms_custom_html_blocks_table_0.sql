CREATE TABLE cms_custom_html_blocks (
    html_block_id SERIAL PRIMARY KEY,
    block_name VARCHAR(255) NOT NULL,
    html_content TEXT NOT NULL,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);