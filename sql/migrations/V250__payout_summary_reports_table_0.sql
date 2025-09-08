CREATE TABLE payout_summary_reports (
    report_id SERIAL PRIMARY KEY,
    vendor_id INT,
    total_payout NUMERIC(12,2) DEFAULT 0,
    payout_count INT DEFAULT 0,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);