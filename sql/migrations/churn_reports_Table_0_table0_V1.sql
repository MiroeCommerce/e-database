CREATE TABLE churn_reports (
    report_id SERIAL PRIMARY KEY,
    customer_id INT,
    last_order_date DATE,
    churned BOOLEAN DEFAULT FALSE,
    churn_reason VARCHAR(255),
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);