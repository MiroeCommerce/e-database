CREATE TABLE loyalty_account_adjustments (
    id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES loyalty_members(id) ON DELETE CASCADE,
    adjusted_by INTEGER REFERENCES users(id) ON DELETE SET NULL,
    points_change INTEGER NOT NULL,
    reason TEXT,
    adjusted_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);