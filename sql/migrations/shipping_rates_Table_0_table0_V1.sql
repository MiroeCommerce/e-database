CREATE TABLE shipping_rates (
    rate_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    zone_id UUID NOT NULL REFERENCES shipping_zones(zone_id),
    method_id UUID NOT NULL REFERENCES shipping_methods(method_id),
    min_weight NUMERIC(10,2),
    max_weight NUMERIC(10,2),
    price NUMERIC(10,2) NOT NULL,
    currency CHAR(3) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);