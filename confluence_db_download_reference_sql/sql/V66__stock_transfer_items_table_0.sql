CREATE TABLE stock_transfer_items (
    id BIGSERIAL PRIMARY KEY,
    stock_transfer_order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    variant_id BIGINT NOT NULL,
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (stock_transfer_order_id) REFERENCES stock_transfer_orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(id)
);