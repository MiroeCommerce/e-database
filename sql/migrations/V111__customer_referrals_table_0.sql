CREATE TABLE customer_referrals (
    referral_id SERIAL PRIMARY KEY,
    referrer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    referee_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    referral_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'pending' -- e.g., 'pending', 'completed', 'invalid'
);