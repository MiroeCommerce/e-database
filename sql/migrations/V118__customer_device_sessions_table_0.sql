CREATE TABLE customer_device_sessions (
    session_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    device_type VARCHAR(50),
    device_os VARCHAR(50),
    browser VARCHAR(50),
    ip_address VARCHAR(50),
    session_start TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    session_end TIMESTAMP
);