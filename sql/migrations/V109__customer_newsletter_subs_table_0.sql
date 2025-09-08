CREATE TABLE customer_newsletter_subs (
    subscription_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    email VARCHAR(255) NOT NULL,
    subscribed BOOLEAN DEFAULT TRUE,
    preferences JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);