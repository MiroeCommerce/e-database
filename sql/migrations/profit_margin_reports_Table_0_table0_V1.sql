CREATE TABLE profit_margin_reports (
    report_id SERIAL PRIMARY KEY,
    product_id INT,
    order_id INT,
    vendor_cost NUMERIC(12,2),
    selling_price NUMERIC(12,2),
    profit_margin NUMERIC(5,2),
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);