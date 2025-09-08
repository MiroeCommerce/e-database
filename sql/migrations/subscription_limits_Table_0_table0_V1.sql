CREATE TABLE subscription_limits (
    limit_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    limit_type VARCHAR(255) NOT NULL, -- e.g., users, devices, storage
    max_value DECIMAL(12,2) NOT NULL,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);