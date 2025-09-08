CREATE TABLE subscription_cancellations (
    cancellation_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    cancelled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    reason TEXT,
    processed_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);