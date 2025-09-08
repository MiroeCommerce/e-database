CREATE TABLE conversion_reports (
    report_id SERIAL PRIMARY KEY,
    channel VARCHAR(100),
    landing_page VARCHAR(255),
    visits INT DEFAULT 0,
    conversions INT DEFAULT 0,
    conversion_rate NUMERIC(5,2),
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);