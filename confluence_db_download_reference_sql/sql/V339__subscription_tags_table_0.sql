CREATE TABLE subscription_tags (
    tag_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    tag_name VARCHAR(100) NOT NULL,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);