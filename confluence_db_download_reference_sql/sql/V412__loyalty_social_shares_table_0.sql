CREATE TABLE loyalty_social_shares (
    id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES loyalty_members(id) ON DELETE CASCADE,
    platform VARCHAR(100) NOT NULL,
    share_date TIMESTAMP NOT NULL DEFAULT NOW(),
    reward_points INTEGER,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);