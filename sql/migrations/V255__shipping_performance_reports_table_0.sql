CREATE TABLE shipping_performance_reports (
    report_id SERIAL PRIMARY KEY,
    carrier_id INT,
    shipment_count INT DEFAULT 0,
    on_time_count INT DEFAULT 0,
    delayed_count INT DEFAULT 0,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);