CREATE TABLE subscription_discounts (
    discount_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    discount_code VARCHAR(50),
    amount DECIMAL(12,2),
    type VARCHAR(50), -- e.g., percentage, fixed
    start_date DATE,
    end_date DATE,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);