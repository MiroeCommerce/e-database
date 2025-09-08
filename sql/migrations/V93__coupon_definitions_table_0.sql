CREATE TABLE coupon_definitions (
    coupon_id BIGSERIAL PRIMARY KEY,
    coupon_code VARCHAR(50) NOT NULL UNIQUE,
    discount_type VARCHAR(20) NOT NULL, -- e.g., percentage, fixed
    discount_value NUMERIC(12,2) NOT NULL CHECK (discount_value >= 0),
    expiration_date TIMESTAMP,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_coupon_definitions_code ON coupon_definitions(coupon_code);
