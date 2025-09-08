CREATE TABLE loyalty_members (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL UNIQUE,
    program_id INTEGER NOT NULL REFERENCES loyalty_programs(id) ON DELETE CASCADE,
    tier_id INTEGER REFERENCES loyalty_tiers(id),
    join_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    points_balance INTEGER DEFAULT 0,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);