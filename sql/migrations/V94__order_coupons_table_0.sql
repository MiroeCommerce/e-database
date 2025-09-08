CREATE TABLE order_coupons (
    order_coupon_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    coupon_id BIGINT NOT NULL,
    applied_amount NUMERIC(12,2) NOT NULL CHECK (applied_amount >= 0),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_coupons_order
        FOREIGN KEY (order_id) REFERENCES orders(id),
    CONSTRAINT fk_order_coupons_coupon
        FOREIGN KEY (coupon_id) REFERENCES coupon_definitions(coupon_id)
);

CREATE INDEX idx_order_coupons_order_id ON order_coupons(order_id);
CREATE INDEX idx_order_coupons_coupon_id ON order_coupons(coupon_id);