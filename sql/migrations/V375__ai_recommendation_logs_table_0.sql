CREATE TABLE ai_recommendation_logs (
    log_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    recommendation_id BIGINT NOT NULL,
    shown_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);