CREATE TABLE coupon_usage (
    usage_id BIGSERIAL PRIMARY KEY,
    coupon_id BIGINT NOT NULL REFERENCES coupons(coupon_id) ON DELETE CASCADE,
    customer_id BIGINT NOT NULL,
    order_id BIGINT,
    used_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);