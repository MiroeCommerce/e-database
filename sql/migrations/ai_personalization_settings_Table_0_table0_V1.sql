CREATE TABLE ai_personalization_settings (
    setting_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT,
    segment_id BIGINT,
    parameter_name VARCHAR(255) NOT NULL,
    parameter_value VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);