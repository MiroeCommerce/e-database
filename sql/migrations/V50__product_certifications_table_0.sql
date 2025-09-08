CREATE TABLE product_certifications (
    id SERIAL PRIMARY KEY,
    product_id UUID NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
    variant_id UUID REFERENCES product_variants(variant_id) ON DELETE CASCADE,
    certification_name VARCHAR(255) NOT NULL,
    certification_body VARCHAR(255),
    certification_date DATE,
    expiry_date DATE,
    document_url TEXT,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

-- Optional indexes for filtering and searching
CREATE INDEX idx_certifications_product_id ON product_certifications(product_id);
CREATE INDEX idx_certifications_variant_id ON product_certifications(variant_id);
CREATE INDEX idx_certifications_name ON product_certifications(certification_name);