CREATE TABLE stock_valuation (
    id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    variant_id BIGINT,
    warehouse_id BIGINT NOT NULL,
    valuation_date DATE NOT NULL,
    quantity INTEGER NOT NULL CHECK (quantity >= 0),
    unit_cost NUMERIC(12,4) NOT NULL CHECK (unit_cost >= 0),
    total_value NUMERIC(14,2) GENERATED ALWAYS AS (quantity * unit_cost) STORED,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(id)
);