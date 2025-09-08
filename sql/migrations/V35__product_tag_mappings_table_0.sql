CREATE TABLE product_tag_mappings (
    product_id UUID NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
    tag_id INTEGER NOT NULL REFERENCES product_tags(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    PRIMARY KEY (product_id, tag_id)
);

-- Indexes
CREATE INDEX idx_product_tag_mappings_product_id ON product_tag_mappings(product_id);
CREATE INDEX idx_product_tag_mappings_tag_id ON product_tag_mappings(tag_id);  -- ✅ use tag_id
