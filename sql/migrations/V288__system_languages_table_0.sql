CREATE TABLE system_languages (
    language_id SERIAL PRIMARY KEY,
    language_code VARCHAR(10) NOT NULL UNIQUE, -- e.g., en, fr, de
    language_name VARCHAR(100) NOT NULL,
    is_default BOOLEAN DEFAULT FALSE,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);