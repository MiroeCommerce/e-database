CREATE TABLE customer_activity_logs (
    log_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    activity_type VARCHAR(100) NOT NULL,
    activity_details TEXT,
    activity_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);