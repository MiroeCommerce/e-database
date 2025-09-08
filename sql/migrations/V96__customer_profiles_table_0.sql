CREATE TABLE customer_profiles (
    profile_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    preferred_language VARCHAR(50),
    preferred_currency VARCHAR(10),
    date_of_birth DATE,
    gender VARCHAR(10),
    occupation VARCHAR(100),
    interests TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);