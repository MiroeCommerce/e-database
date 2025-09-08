CREATE TABLE reorder_rules (
    id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    variant_id BIGINT,
    min_stock_level INTEGER NOT NULL CHECK (min_stock_level >= 0),
    reorder_quantity INTEGER NOT NULL CHECK (reorder_quantity > 0),
    lead_time_days INTEGER NOT NULL CHECK (lead_time_days >= 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(id)
);