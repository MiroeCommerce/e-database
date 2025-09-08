CREATE TABLE ai_feedback (
    feedback_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    recommendation_id BIGINT,
    feedback_type VARCHAR(50) NOT NULL,
    feedback_value NUMERIC,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);