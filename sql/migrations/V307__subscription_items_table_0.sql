CREATE TABLE subscription_items (
    item_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    product_id INT NOT NULL,
    quantity INT DEFAULT 1,
    price DECIMAL(12,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);