CREATE TABLE customer_returns (
    return_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    order_id INT NOT NULL REFERENCES customer_orders(order_id),
    product_id INT NOT NULL,
    reason TEXT,
    status VARCHAR(50) DEFAULT 'pending', -- e.g., 'pending', 'approved', 'rejected'
    return_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    processed_date TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);