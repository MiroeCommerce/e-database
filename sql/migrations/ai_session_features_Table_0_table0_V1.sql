CREATE TABLE ai_session_features (
    feature_id BIGSERIAL PRIMARY KEY,
    session_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    feature_name VARCHAR(255) NOT NULL,
    feature_value JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);