CREATE TABLE purchase_orders (
    id BIGSERIAL PRIMARY KEY,
    order_number VARCHAR(50) NOT NULL UNIQUE,
    supplier_id BIGINT NOT NULL,
    warehouse_id BIGINT NOT NULL,
    status VARCHAR(50) NOT NULL CHECK (
        status IN ('draft', 'issued', 'received', 'cancelled')
    ),
    issue_date DATE NOT NULL,
    expected_delivery DATE,
    total_amount NUMERIC(12,2) NOT NULL DEFAULT 0.00,
    currency VARCHAR(10) NOT NULL DEFAULT 'USD',
    notes TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (supplier_id) REFERENCES suppliers(id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(id)
);