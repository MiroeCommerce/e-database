CREATE TABLE product_performance_reports (
    report_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    views INT DEFAULT 0,
    purchases INT DEFAULT 0,
    returns INT DEFAULT 0,
    revenue NUMERIC(12,2) DEFAULT 0,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);