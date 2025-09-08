CREATE TABLE subscription_addons (
    addon_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    addon_name VARCHAR(255) NOT NULL,
    price DECIMAL(12,2),
    currency VARCHAR(10) DEFAULT 'USD',
    start_date DATE,
    end_date DATE,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);