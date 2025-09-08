CREATE TABLE newsletter_templates (
    template_id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    subject_line VARCHAR(255) NOT NULL,
    body TEXT NOT NULL, -- HTML or plain text
    personalization_supported BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);