CREATE TABLE ai_feature_importance (
    feature_id BIGSERIAL PRIMARY KEY,
    model_id BIGINT NOT NULL,
    feature_name VARCHAR(255) NOT NULL,
    importance_score NUMERIC,
    calculated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);