CREATE TABLE return_rate_reports (
    report_id SERIAL PRIMARY KEY,
    product_id INT,
    category_id INT,
    vendor_id INT,
    total_orders INT DEFAULT 0,
    returned_orders INT DEFAULT 0,
    return_rate NUMERIC(5,2),
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);