CREATE TABLE ai_interaction_logs (
    interaction_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    interaction_type VARCHAR(50) NOT NULL,
    interaction_value NUMERIC,
    interaction_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);