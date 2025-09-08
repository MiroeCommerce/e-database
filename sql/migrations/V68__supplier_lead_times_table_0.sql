CREATE TABLE supplier_lead_times (
    id BIGSERIAL PRIMARY KEY,
    supplier_id BIGINT NOT NULL,
    product_id UUID,
    variant_id UUID,
    lead_time_days INTEGER NOT NULL CHECK (lead_time_days >= 0),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (supplier_id) REFERENCES suppliers(id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(variant_id)
);