CREATE TABLE subscription_api_keys (
    api_key_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    api_key VARCHAR(255) NOT NULL UNIQUE,
    scopes TEXT,
    expires_at TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Active', -- Active, Revoked, Expired
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);