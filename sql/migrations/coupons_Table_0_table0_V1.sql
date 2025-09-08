CREATE TABLE coupons (
    coupon_id BIGSERIAL PRIMARY KEY,
    promotion_id BIGINT NOT NULL REFERENCES promotions(promotion_id) ON DELETE CASCADE,
    code VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    usage_limit INT, -- max times coupon can be used
    expiration_date TIMESTAMP,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);