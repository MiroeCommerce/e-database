CREATE TABLE supplier_deliveries (
    id BIGSERIAL PRIMARY KEY,
    supplier_id BIGINT NOT NULL,
    purchase_order_id BIGINT,
    warehouse_id BIGINT NOT NULL,
    delivery_code VARCHAR(50) NOT NULL UNIQUE,
    delivery_status VARCHAR(50) NOT NULL CHECK (
        delivery_status IN ('pending', 'received', 'partial', 'cancelled')
    ),
    delivered_at TIMESTAMP,
    expected_at TIMESTAMP,
    received_by VARCHAR(100),
    comments TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (supplier_id) REFERENCES suppliers(id),
    FOREIGN KEY (purchase_order_id) REFERENCES purchase_orders(id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(id)
);