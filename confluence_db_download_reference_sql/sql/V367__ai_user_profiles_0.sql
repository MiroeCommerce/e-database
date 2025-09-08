CREATE TABLE ai_user_profiles (
    user_id BIGINT PRIMARY KEY,
    demographics JSONB,
    preferences JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);