CREATE TABLE customer_behavior_reports (
    report_id SERIAL PRIMARY KEY,
    customer_id INT,
    product_id INT,
    action_type VARCHAR(50) NOT NULL,
    action_count INT DEFAULT 0,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);