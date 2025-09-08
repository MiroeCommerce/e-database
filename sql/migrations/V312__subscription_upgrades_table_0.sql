CREATE TABLE subscription_upgrades (
    upgrade_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    new_plan_id INT NOT NULL, -- references subscription_plans
    requested_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    processed_at TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Completed, Failed
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);