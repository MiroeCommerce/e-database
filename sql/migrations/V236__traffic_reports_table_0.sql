CREATE TABLE traffic_reports (
    report_id SERIAL PRIMARY KEY,
    page_url VARCHAR(255),
    visits INT DEFAULT 0,
    unique_visitors INT DEFAULT 0,
    bounce_rate NUMERIC(5,2),
    avg_session_duration INTERVAL,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);