CREATE TABLE subscription_invoices (
    invoice_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    invoice_number VARCHAR(50) NOT NULL,
    amount DECIMAL(12,2) NOT NULL,
    currency VARCHAR(10) DEFAULT 'USD',
    invoice_date DATE NOT NULL,
    due_date DATE,
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Paid, Overdue
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);