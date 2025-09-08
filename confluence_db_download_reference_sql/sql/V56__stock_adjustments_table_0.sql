CREATE TABLE stock_adjustments (
    id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    variant_id BIGINT NOT NULL,
    warehouse_id BIGINT NOT NULL,
    zone_id BIGINT,
    adjustment_type VARCHAR(50) NOT NULL CHECK (adjustment_type IN ('increase', 'decrease')),
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    reason TEXT NOT NULL,
    approved_by VARCHAR(100),
    created_by VARCHAR(100) NOT NULL,
    adjusted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(id),
    FOREIGN KEY (zone_id) REFERENCES warehouse_zones(id)
);