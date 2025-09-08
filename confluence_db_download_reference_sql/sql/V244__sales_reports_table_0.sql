CREATE TABLE sales_reports (
    report_id SERIAL PRIMARY KEY,
    product_id INT,
    category_id INT,
    region_id INT,
    sales_date DATE NOT NULL,
    units_sold INT DEFAULT 0,
    revenue NUMERIC(12,2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);