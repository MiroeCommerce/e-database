CREATE TABLE ai_content_based_features (
    feature_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    feature_name VARCHAR(255) NOT NULL,
    feature_value VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);