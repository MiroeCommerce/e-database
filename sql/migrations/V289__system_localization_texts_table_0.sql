CREATE TABLE system_localization_texts (
    text_id SERIAL PRIMARY KEY,
    language_id INT NOT NULL, -- references system_languages
    text_key VARCHAR(255) NOT NULL,
    text_value TEXT NOT NULL,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);