CREATE TABLE order_shipments (
    shipment_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    order_id UUID NOT NULL REFERENCES orders(order_id),
    carrier_id UUID REFERENCES shipping_carriers(carrier_id),
    tracking_number VARCHAR(100),
    status_id UUID REFERENCES shipment_statuses(status_id),
    shipped_at TIMESTAMP,
    delivered_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);