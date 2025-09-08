CREATE TABLE customer_security_logs (
    log_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    event_type VARCHAR(50) NOT NULL, -- e.g., 'password_change', 'mfa_enabled', 'suspicious_login'
    event_details TEXT,
    event_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(50),
    device_info TEXT
);