CREATE TABLE ai_purchase_probability (
    prediction_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    probability NUMERIC,
    predicted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);