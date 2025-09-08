CREATE TABLE inventory_stocks (
    id BIGSERIAL PRIMARY KEY,
    product_id UUID NOT NULL,
    variant_id UUID NOT NULL,
    warehouse_id BIGINT NOT NULL,
    quantity_on_hand INTEGER NOT NULL DEFAULT 0,
    quantity_reserved INTEGER NOT NULL DEFAULT 0,
    quantity_in_transit INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(variant_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(id)
);