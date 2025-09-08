CREATE TABLE product_images (
    image_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    product_id UUID REFERENCES products(product_id) ON DELETE CASCADE,
    variant_id UUID REFERENCES product_variants(variant_id) ON DELETE CASCADE,
    url TEXT NOT NULL,
    alt_text VARCHAR(255),
    sort_order INTEGER DEFAULT 0,
    is_primary BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT product_or_variant_check CHECK (
        (product_id IS NOT NULL AND variant_id IS NULL) OR
        (product_id IS NULL AND variant_id IS NOT NULL)
    )
);