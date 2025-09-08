CREATE TABLE procurement_orders (
    order_id BIGSERIAL PRIMARY KEY,
    request_id BIGINT NOT NULL,
    supplier_id BIGINT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    total_amount NUMERIC,
    notes TEXT
);