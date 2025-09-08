CREATE TABLE ai_contextual_data (
    context_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    session_id BIGINT,
    device_type VARCHAR(50),
    location VARCHAR(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    seasonality_info JSONB,
    notes TEXT
);