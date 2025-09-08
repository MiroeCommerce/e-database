CREATE TABLE cms_translation_entries (
    translation_id SERIAL PRIMARY KEY,
    content_type VARCHAR(50) NOT NULL, -- e.g., page, block, banner
    content_id INT NOT NULL, -- ID of the content being translated
    language_code VARCHAR(10) NOT NULL, -- e.g., en, fr, de
    translated_text TEXT NOT NULL,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);