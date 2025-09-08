CREATE TABLE customer_loyalty_points (
    points_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    points_earned INT DEFAULT 0,
    points_redeemed INT DEFAULT 0,
    points_expired INT DEFAULT 0,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);