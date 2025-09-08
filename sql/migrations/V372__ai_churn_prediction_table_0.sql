CREATE TABLE ai_churn_prediction (
    prediction_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    churn_score NUMERIC,
    predicted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);