CREATE TABLE stock_transfer_orders (
    id BIGSERIAL PRIMARY KEY,
    transfer_number VARCHAR(50) NOT NULL UNIQUE,
    source_warehouse_id BIGINT NOT NULL,
    dest_warehouse_id BIGINT NOT NULL,
    status VARCHAR(50) NOT NULL CHECK (
        status IN ('pending', 'in_transit', 'completed', 'cancelled')
    ),
    requested_date DATE NOT NULL,
    shipped_date DATE,
    received_date DATE,
    notes TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (source_warehouse_id) REFERENCES warehouses(id),
    FOREIGN KEY (dest_warehouse_id) REFERENCES warehouses(id)
);