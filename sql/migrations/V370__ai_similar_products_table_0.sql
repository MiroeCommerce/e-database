CREATE TABLE ai_similar_products (
    similar_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    similar_product_id BIGINT NOT NULL,
    similarity_score NUMERIC,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);