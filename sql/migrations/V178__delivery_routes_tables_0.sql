CREATE TABLE delivery_routes (
    route_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    vehicle_id UUID REFERENCES delivery_vehicles(vehicle_id),
    person_id UUID REFERENCES delivery_personnel(person_id),
    route_date DATE NOT NULL,
    route_data JSONB,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);