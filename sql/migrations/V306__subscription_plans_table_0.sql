CREATE TABLE subscription_plans (
    plan_id SERIAL PRIMARY KEY,
    plan_name VARCHAR(255) NOT NULL,
    billing_interval VARCHAR(50) NOT NULL, -- e.g., monthly, yearly, trial
    price DECIMAL(12,2) NOT NULL,
    currency VARCHAR(10) DEFAULT 'USD',
    features TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);