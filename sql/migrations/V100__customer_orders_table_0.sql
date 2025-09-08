CREATE TABLE customer_orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    order_status VARCHAR(50) NOT NULL, -- e.g., 'pending', 'shipped', 'completed'
    total_amount DECIMAL(12,2) NOT NULL,
    currency VARCHAR(10) DEFAULT 'USD',
    placed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    shipped_at TIMESTAMP,
    delivered_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);