CREATE TABLE vendor_settlement_reports (
    report_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    total_amount NUMERIC(12,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);