CREATE TABLE customs_declarations (
    declaration_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    shipment_id BIGSERIAL NOT NULL REFERENCES order_shipments(shipment_id),
    country CHAR(2) NOT NULL,
    description TEXT NOT NULL,
    value NUMERIC(12,2) NOT NULL,
    currency CHAR(3) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);