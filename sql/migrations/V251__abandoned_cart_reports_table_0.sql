CREATE TABLE abandoned_cart_reports (
    report_id SERIAL PRIMARY KEY,
    customer_id INT,
    cart_id INT,
    abandoned_items INT DEFAULT 0,
    recovered_items INT DEFAULT 0,
    abandoned_value NUMERIC(12,2) DEFAULT 0,
    recovered_value NUMERIC(12,2) DEFAULT 0,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);