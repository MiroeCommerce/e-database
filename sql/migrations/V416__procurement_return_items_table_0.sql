CREATE TABLE procurement_return_items (
    return_item_id BIGSERIAL PRIMARY KEY,
    return_id BIGINT NOT NULL,
    order_item_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    quantity INT NOT NULL,
    notes TEXT
);