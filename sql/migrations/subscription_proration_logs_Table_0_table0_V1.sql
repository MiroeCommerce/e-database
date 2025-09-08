CREATE TABLE subscription_proration_logs (
    proration_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    old_plan_id INT NOT NULL, -- references subscription_plans
    new_plan_id INT NOT NULL, -- references subscription_plans
    proration_amount DECIMAL(12,2) NOT NULL,
    reason TEXT,
    processed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);