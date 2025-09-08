CREATE TABLE return_disputes (
    dispute_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    customer_id INT NOT NULL,
    issue TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'open',
    resolution_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);