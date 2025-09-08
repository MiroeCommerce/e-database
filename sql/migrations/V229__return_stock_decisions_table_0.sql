CREATE TABLE return_stock_decisions (
    decision_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    decision_type VARCHAR(100) NOT NULL,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);