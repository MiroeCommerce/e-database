CREATE TABLE return_exchanges (
    exchange_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    original_product_id INT NOT NULL,
    new_product_id INT NOT NULL,
    quantity INT DEFAULT 1,
    status VARCHAR(50) DEFAULT 'requested',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);