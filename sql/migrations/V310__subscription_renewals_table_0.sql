CREATE TABLE subscription_renewals (
    renewal_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    scheduled_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Completed, Failed
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);