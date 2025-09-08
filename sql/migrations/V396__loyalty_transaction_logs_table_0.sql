CREATE TABLE loyalty_transaction_logs (
    id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES loyalty_members(id) ON DELETE CASCADE,
    program_id INTEGER NOT NULL REFERENCES loyalty_programs(id) ON DELETE CASCADE,
    transaction_type VARCHAR(50) NOT NULL,
    points INTEGER NOT NULL,
    transaction_date TIMESTAMP NOT NULL DEFAULT NOW(),
    description TEXT,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);