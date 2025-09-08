CREATE TABLE cross_sell_rules (
    rule_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    related_product_id BIGINT NOT NULL,
    condition JSONB, -- optional targeting conditions
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);