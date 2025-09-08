CREATE TABLE backorders (
    id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    variant_id BIGINT,
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    backorder_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    expected_fulfill_date TIMESTAMP,
    status VARCHAR(50) NOT NULL CHECK (status IN ('pending', 'fulfilled', 'cancelled')),
    notes TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(id)
);