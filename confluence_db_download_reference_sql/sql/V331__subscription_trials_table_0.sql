CREATE TABLE subscription_trials (
    trial_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    trial_start DATE NOT NULL,
    trial_end DATE NOT NULL,
    converted_to_subscription BOOLEAN DEFAULT FALSE,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);