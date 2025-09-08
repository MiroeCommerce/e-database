CREATE TABLE return_fees (
    fee_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    fee_type VARCHAR(100) NOT NULL,
    amount NUMERIC(12,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);