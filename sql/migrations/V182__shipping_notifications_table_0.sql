CREATE TABLE shipping_notifications (
    notification_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    shipment_id BIGSERIAL NOT NULL REFERENCES order_shipments(shipment_id),
    message TEXT NOT NULL,
    channel VARCHAR(50) NOT NULL,
    sent_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);