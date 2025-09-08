CREATE TABLE customer_referral_rewards (
    reward_id SERIAL PRIMARY KEY,
    referral_id INT NOT NULL REFERENCES customer_referrals(referral_id) ON DELETE CASCADE,
    customer_id INT NOT NULL REFERENCES customers(customer_id),
    reward_type VARCHAR(50), -- e.g., 'points', 'coupon'
    reward_value DECIMAL(12,2),
    issued_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    redeemed_at TIMESTAMP,
    status VARCHAR(20) DEFAULT 'unredeemed'
);