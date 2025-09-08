CREATE TABLE shipping_exceptions (
    exception_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    shipment_id UUID NOT NULL REFERENCES order_shipments(shipment_id),
    reason_code VARCHAR(50) NOT NULL,
    description TEXT,
    resolution TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);