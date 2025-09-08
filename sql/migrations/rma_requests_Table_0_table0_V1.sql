CREATE TABLE rma_requests (
    rma_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    rma_number VARCHAR(50) NOT NULL,
    issued_date DATE DEFAULT CURRENT_DATE,
    status_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);