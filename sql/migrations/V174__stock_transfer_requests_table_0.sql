CREATE TABLE stock_transfer_requests (
    transfer_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    source_warehouse UUID NOT NULL REFERENCES warehouse_locations(warehouse_id),
    destination_warehouse UUID NOT NULL REFERENCES warehouse_locations(warehouse_id),
    status_id UUID NOT NULL,
    requested_by UUID NOT NULL REFERENCES users(id),
    approved_by UUID REFERENCES users(id),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);