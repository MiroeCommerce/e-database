CREATE TABLE category_performance_reports (
    report_id SERIAL PRIMARY KEY,
    category_id INT NOT NULL,
    total_views INT DEFAULT 0,
    total_purchases INT DEFAULT 0,
    total_returns INT DEFAULT 0,
    total_revenue NUMERIC(12,2) DEFAULT 0,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);