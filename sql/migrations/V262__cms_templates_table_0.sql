CREATE TABLE cms_templates (
    template_id SERIAL PRIMARY KEY,
    template_name VARCHAR(255) NOT NULL,
    layout_definition TEXT NOT NULL, -- JSON or markup for layout
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);