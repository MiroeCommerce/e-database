CREATE TABLE customer_preferences (
    preference_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    language VARCHAR(50),
    currency VARCHAR(10),
    layout VARCHAR(50),
    theme VARCHAR(50),
    notifications JSONB,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);