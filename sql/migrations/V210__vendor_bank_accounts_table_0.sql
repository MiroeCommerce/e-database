CREATE TABLE vendor_bank_accounts (
    account_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    bank_name VARCHAR(255) NOT NULL,
    account_number VARCHAR(50) NOT NULL,
    account_type VARCHAR(50),
    routing_number VARCHAR(50),
    currency VARCHAR(10) DEFAULT 'USD',
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);