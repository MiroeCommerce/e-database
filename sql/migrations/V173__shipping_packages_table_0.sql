CREATE TABLE shipping_packages (
    package_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    order_id BIGSERIAL NOT NULL REFERENCES orders(id),
    weight NUMERIC(10,2) NOT NULL,
    length NUMERIC(10,2),
    width NUMERIC(10,2),
    height NUMERIC(10,2),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);