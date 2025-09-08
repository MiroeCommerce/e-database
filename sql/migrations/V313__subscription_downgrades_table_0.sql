CREATE TABLE subscription_downgrades (
    downgrade_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    new_plan_id INT NOT NULL, -- references subscription_plans
    requested_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    effective_at TIMESTAMP, -- when the downgrade will take effect
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Scheduled, Completed
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);