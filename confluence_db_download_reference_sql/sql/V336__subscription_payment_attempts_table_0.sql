CREATE TABLE subscription_payment_attempts (
    attempt_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    invoice_id INT NOT NULL, -- references subscription_invoices
    attempt_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(12,2) NOT NULL,
    currency VARCHAR(10) DEFAULT 'USD',
    status VARCHAR(50) DEFAULT 'Failed', -- Success, Failed, Pending
    payment_method VARCHAR(50),
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);