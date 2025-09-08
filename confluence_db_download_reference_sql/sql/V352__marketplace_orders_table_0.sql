CREATE TABLE marketplace_orders (
    order_id BIGSERIAL PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    vendor_id BIGINT NOT NULL,
    total_amount NUMERIC NOT NULL,
    order_status VARCHAR(50),
    placed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);