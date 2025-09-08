CREATE TABLE ai_trending_products (
    trending_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    trend_score NUMERIC,
    recorded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);