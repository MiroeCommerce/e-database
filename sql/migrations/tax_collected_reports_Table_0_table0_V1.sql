CREATE TABLE tax_collected_reports (
    report_id SERIAL PRIMARY KEY,
    jurisdiction VARCHAR(100),
    total_tax NUMERIC(12,2) DEFAULT 0,
    total_sales NUMERIC(12,2) DEFAULT 0,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);