CREATE TABLE loyalty_redemptions (
    id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES loyalty_members(id) ON DELETE CASCADE,
    reward_id INTEGER NOT NULL REFERENCES loyalty_rewards_catalog(id) ON DELETE CASCADE,
    redemption_date TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    status VARCHAR(50) DEFAULT 'pending',
    quantity INTEGER DEFAULT 1,
    notes TEXT,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);