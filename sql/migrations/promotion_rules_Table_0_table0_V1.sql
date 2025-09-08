CREATE TABLE promotion_rules (
    rule_id BIGSERIAL PRIMARY KEY,
    promotion_id BIGINT NOT NULL REFERENCES promotions(promotion_id) ON DELETE CASCADE,
    condition_type VARCHAR(100) NOT NULL, -- e.g., min_order_amount, product_category, user_group
    condition_value JSONB NOT NULL, -- flexible value depending on type
    discount_type VARCHAR(50) NOT NULL, -- percentage, fixed_amount, free_shipping
    discount_value NUMERIC(10,2) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);