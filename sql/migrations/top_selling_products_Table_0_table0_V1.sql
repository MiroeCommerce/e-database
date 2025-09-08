CREATE TABLE top_selling_products (
    report_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    units_sold INT DEFAULT 0,
    revenue NUMERIC(12,2) DEFAULT 0,
    report_date DATE NOT NULL,
    rank INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);