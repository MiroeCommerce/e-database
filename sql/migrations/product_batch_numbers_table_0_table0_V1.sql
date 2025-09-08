CREATE TABLE product_batch_numbers (
    id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    variant_id BIGINT,
    batch_number VARCHAR(100) NOT NULL,
    production_date DATE,
    expiration_date DATE,
    quantity INTEGER NOT NULL CHECK (quantity >= 0),
    warehouse_id BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(id),
    UNIQUE (batch_number, product_id, variant_id)
);