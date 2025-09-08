CREATE TABLE loyalty_referrals (
    id SERIAL PRIMARY KEY,
    referrer_member_id INTEGER NOT NULL REFERENCES loyalty_members(id) ON DELETE CASCADE,
    referred_email VARCHAR(255) NOT NULL,
    referral_code VARCHAR(100) NOT NULL UNIQUE,
    reward_points INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'pending',
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);