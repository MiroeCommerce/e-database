CREATE TABLE subscription_usage_logs (
    usage_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    usage_date DATE NOT NULL,
    usage_metric VARCHAR(255), -- e.g., API calls, licenses used
    quantity DECIMAL(12,2) DEFAULT 0,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);