CREATE TABLE inventory_movements (
    id BIGSERIAL PRIMARY KEY,
    product_id UUID NOT NULL,
    variant_id UUID NOT NULL,
    warehouse_id BIGINT NOT NULL,
    source_zone_id BIGINT,
    destination_zone_id BIGINT,
    movement_type VARCHAR(50) NOT NULL CHECK (movement_type IN ('inbound', 'outbound', 'adjustment', 'transfer')),
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    movement_reason VARCHAR(255),
    reference_id BIGINT,
    reference_type VARCHAR(50),
    moved_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(variant_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(id),
    FOREIGN KEY (source_zone_id) REFERENCES warehouse_zones(id),
    FOREIGN KEY (destination_zone_id) REFERENCES warehouse_zones(id)
);