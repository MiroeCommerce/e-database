CREATE TABLE pickup_schedules (
    schedule_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    pickup_id UUID NOT NULL REFERENCES pickup_locations(pickup_id),
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    max_orders INT NOT NULL CHECK (max_orders > 0),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);