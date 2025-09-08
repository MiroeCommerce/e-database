CREATE TABLE ai_recommendation_models (
    model_id BIGSERIAL PRIMARY KEY,
    model_name VARCHAR(255) NOT NULL,
    model_type VARCHAR(100) NOT NULL,
    version VARCHAR(50) NOT NULL,
    parameters JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);