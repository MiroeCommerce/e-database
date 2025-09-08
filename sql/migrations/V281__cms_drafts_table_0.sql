CREATE TABLE cms_drafts (
    draft_id SERIAL PRIMARY KEY,
    content_type VARCHAR(50) NOT NULL, -- e.g., page, block, banner
    content_id INT, -- optional reference if editing existing content
    draft_content TEXT NOT NULL,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);