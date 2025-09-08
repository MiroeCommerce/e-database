CREATE TABLE product_warranty_terms (
    id SERIAL PRIMARY KEY,
    product_id UUID NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
    variant_id UUID REFERENCES product_variants(variant_id) ON DELETE CASCADE,
    duration_months INTEGER NOT NULL,
    coverage_details TEXT,
    warranty_provider VARCHAR(255),
    terms_url TEXT,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

-- Optional indexes
CREATE INDEX idx_warranty_product_id ON product_warranty_terms(product_id);
CREATE INDEX idx_warranty_variant_id ON product_warranty_terms(variant_id);