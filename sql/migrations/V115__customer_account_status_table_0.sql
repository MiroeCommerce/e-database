CREATE TABLE customer_account_status (
    status_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    account_status VARCHAR(50) NOT NULL, -- e.g., 'active', 'suspended', 'closed'
    reason TEXT,
    flagged_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP
);