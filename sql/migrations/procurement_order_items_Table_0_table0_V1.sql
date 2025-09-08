CREATE TABLE procurement_order_items (
    item_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    quantity INT NOT NULL,
    unit_price NUMERIC NOT NULL,
    total_price NUMERIC,
    notes TEXT
);