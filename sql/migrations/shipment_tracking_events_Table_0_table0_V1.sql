CREATE TABLE shipment_tracking_events (
    event_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    shipment_id UUID NOT NULL REFERENCES order_shipments(shipment_id),
    status VARCHAR(100) NOT NULL,
    location VARCHAR(255),
    event_time TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);