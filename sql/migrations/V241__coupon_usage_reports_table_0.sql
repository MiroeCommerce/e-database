CREATE TABLE coupon_usage_reports (
    report_id SERIAL PRIMARY KEY,
    coupon_code VARCHAR(50) NOT NULL,
    redemptions INT DEFAULT 0,
    total_discount_amount NUMERIC(12,2) DEFAULT 0,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);