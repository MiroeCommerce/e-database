CREATE TABLE subscription_refunds (
    refund_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    invoice_id INT NOT NULL, -- references subscription_invoices
    refund_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(12,2) NOT NULL,
    currency VARCHAR(10) DEFAULT 'USD',
    reason TEXT,
    processed_by INT,
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Completed, Failed
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);