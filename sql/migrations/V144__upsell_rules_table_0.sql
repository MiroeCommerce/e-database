CREATE TABLE upsell_rules (
    rule_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    recommended_product_id BIGINT NOT NULL,
    condition JSONB, -- optional conditions like cart value
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);