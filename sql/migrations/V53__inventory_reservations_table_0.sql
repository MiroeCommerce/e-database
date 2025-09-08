CREATE TABLE inventory_reservations (
    id BIGSERIAL PRIMARY KEY,
    product_id UUID NOT NULL,
    variant_id UUID NOT NULL,
    warehouse_id BIGINT NOT NULL,
    order_id BIGINT,
    reserved_quantity INTEGER NOT NULL CHECK (reserved_quantity > 0),
    reservation_type VARCHAR(50) NOT NULL,
    reservation_status VARCHAR(50) NOT NULL DEFAULT 'active',
    reserved_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(variant_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(id),
    FOREIGN KEY (order_id) REFERENCES orders(id)
);
