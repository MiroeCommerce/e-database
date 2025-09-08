CREATE TABLE loyalty_expiration_policies (
    id SERIAL PRIMARY KEY,
    program_id INTEGER NOT NULL REFERENCES loyalty_programs(id) ON DELETE CASCADE,
    points_expire_after_days INTEGER NOT NULL,
    rewards_expire_after_days INTEGER,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);