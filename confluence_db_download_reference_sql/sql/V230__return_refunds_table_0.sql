CREATE TABLE return_refunds (
    refund_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    amount NUMERIC(12,2) NOT NULL,
    refund_date DATE DEFAULT CURRENT_DATE,
    payment_method VARCHAR(50),
    status VARCHAR(50) DEFAULT 'processed',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);