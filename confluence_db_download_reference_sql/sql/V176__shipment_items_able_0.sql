CREATE TABLE shipment_items (
    shipment_item_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    shipment_id UUID NOT NULL REFERENCES order_shipments(shipment_id),
    order_item_id UUID NOT NULL REFERENCES order_items(order_item_id),
    quantity INT NOT NULL CHECK (quantity > 0),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);