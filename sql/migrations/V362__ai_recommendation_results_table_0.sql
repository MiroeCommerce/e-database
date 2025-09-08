CREATE TABLE ai_recommendation_results (
    result_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    session_id BIGINT,
    recommended_products JSONB,
    generated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);