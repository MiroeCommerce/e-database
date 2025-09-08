CREATE TABLE ai_api_keys (
    api_key_id BIGSERIAL PRIMARY KEY,
    service_name VARCHAR(255) NOT NULL,
    api_key VARCHAR(512) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    notes TEXT
);