CREATE TABLE loyalty_notifications (
    id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES loyalty_members(id) ON DELETE CASCADE,
    program_id INTEGER REFERENCES loyalty_programs(id) ON DELETE SET NULL,
    message TEXT NOT NULL,
    channel VARCHAR(50) NOT NULL,
    sent_at TIMESTAMP,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);