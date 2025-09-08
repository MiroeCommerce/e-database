CREATE TABLE loyalty_expiry_notifications (
    id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES loyalty_members(id) ON DELETE CASCADE,
    points_expiring INTEGER NOT NULL,
    notification_date TIMESTAMP NOT NULL,
    method VARCHAR(50) NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);