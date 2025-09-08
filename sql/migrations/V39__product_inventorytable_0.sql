CREATE TABLE product_inventory (
    id SERIAL PRIMARY KEY,  -- optional surrogate key
    product_variant_id UUID NOT NULL REFERENCES product_variants(variant_id) ON DELETE CASCADE,
    warehouse_id INTEGER NOT NULL REFERENCES warehouses(id) ON DELETE CASCADE,
    quantity_available INTEGER NOT NULL DEFAULT 0,
    quantity_reserved INTEGER NOT NULL DEFAULT 0,
    safety_stock INTEGER DEFAULT 0,
    last_restocked_at TIMESTAMP,
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    UNIQUE (product_variant_id, warehouse_id)  -- composite uniqueness
);

-- Optional indexes for reporting and lookup
CREATE INDEX idx_inventory_variant_id ON product_inventory(product_variant_id);
CREATE INDEX idx_inventory_warehouse_id ON product_inventory(warehouse_id);
