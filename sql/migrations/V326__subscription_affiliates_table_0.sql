CREATE TABLE subscription_affiliates (
    affiliate_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    affiliate_name VARCHAR(255) NOT NULL,
    affiliate_code VARCHAR(50) UNIQUE,
    commission_rate DECIMAL(5,2), -- percentage
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);