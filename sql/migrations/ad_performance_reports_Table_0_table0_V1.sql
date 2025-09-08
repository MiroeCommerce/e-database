CREATE TABLE ad_performance_reports (
    report_id SERIAL PRIMARY KEY,
    platform VARCHAR(50),
    campaign_name VARCHAR(255),
    impressions INT DEFAULT 0,
    clicks INT DEFAULT 0,
    spend NUMERIC(12,2) DEFAULT 0,
    revenue NUMERIC(12,2) DEFAULT 0,
    roi NUMERIC(5,2),
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);