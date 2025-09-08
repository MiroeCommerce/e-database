CREATE TABLE customer_coupons (
    coupon_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id) ON DELETE CASCADE,
    coupon_code VARCHAR(50) NOT NULL,
    discount_amount DECIMAL(12,2),
    discount_percent DECIMAL(5,2),
    valid_from TIMESTAMP,
    valid_until TIMESTAMP,
    status VARCHAR(20) DEFAULT 'active', -- e.g., 'active', 'used', 'expired'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);