CREATE TABLE delivery_vehicles (
    vehicle_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    license_plate VARCHAR(20) NOT NULL UNIQUE,
    capacity_weight DECIMAL(10,2) NOT NULL,
    capacity_volume DECIMAL(10,2) NOT NULL,
    assigned_to UUID REFERENCES delivery_personnel(person_id),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);