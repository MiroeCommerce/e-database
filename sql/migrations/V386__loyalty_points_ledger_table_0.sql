CREATE TABLE loyalty_points_ledger (
    id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES loyalty_members(id) ON DELETE CASCADE,
    program_id INTEGER NOT NULL REFERENCES loyalty_programs(id) ON DELETE CASCADE,
    activity_id INTEGER REFERENCES loyalty_activities(id),
    transaction_type VARCHAR(50) NOT NULL,
    points INTEGER NOT NULL,
    transaction_date TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    notes TEXT,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);