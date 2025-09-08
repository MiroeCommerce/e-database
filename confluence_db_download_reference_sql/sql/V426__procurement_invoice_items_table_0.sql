CREATE TABLE procurement_invoice_items (
    invoice_item_id BIGSERIAL PRIMARY KEY,
    invoice_id BIGINT NOT NULL,
    order_item_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    quantity INT NOT NULL,
    unit_price NUMERIC NOT NULL,
    total_price NUMERIC,
    notes TEXT
);