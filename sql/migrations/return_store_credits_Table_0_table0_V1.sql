CREATE TABLE return_store_credits (
    credit_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    amount NUMERIC(12,2) NOT NULL,
    issued_date DATE DEFAULT CURRENT_DATE,
    expiration_date DATE,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);