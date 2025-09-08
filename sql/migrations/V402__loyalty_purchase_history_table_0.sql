CREATE TABLE loyalty_purchase_history (
    id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES loyalty_members(id) ON DELETE CASCADE,
    order_id INTEGER,
    purchase_date TIMESTAMP NOT NULL,
    total_amount NUMERIC(12,2) NOT NULL,
    points_earned INTEGER,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);