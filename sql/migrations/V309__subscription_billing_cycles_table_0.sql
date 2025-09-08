CREATE TABLE subscription_billing_cycles (
    billing_cycle_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    invoice_id INT,
    amount DECIMAL(12,2) NOT NULL,
    currency VARCHAR(10) DEFAULT 'USD',
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Paid, Failed
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);