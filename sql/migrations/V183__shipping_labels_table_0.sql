CREATE TABLE shipping_labels (
    label_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    shipment_id BIGSERIAL NOT NULL REFERENCES order_shipments(shipment_id),
    carrier_id UUID REFERENCES shipping_carriers(carrier_id),
    label_data BYTEA,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);