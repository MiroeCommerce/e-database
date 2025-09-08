CREATE TABLE product_attribute_values (
    value_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    variant_id UUID NOT NULL REFERENCES product_variants(variant_id) ON DELETE CASCADE,
    attribute_id UUID NOT NULL REFERENCES product_attributes(attribute_id) ON DELETE CASCADE,
    value_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_variant_attribute UNIQUE (variant_id, attribute_id)
);