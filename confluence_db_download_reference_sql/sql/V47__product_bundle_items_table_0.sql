CREATE TABLE product_bundle_items (
    bundle_id INTEGER NOT NULL REFERENCES product_bundles(id) ON DELETE CASCADE,
    product_id INTEGER NOT NULL REFERENCES products(id) ON DELETE CASCADE,
    variant_id INTEGER REFERENCES product_variants(id) ON DELETE CASCADE,
    quantity INTEGER NOT NULL DEFAULT 1,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    PRIMARY KEY (bundle_id, product_id, variant_id)
);

-- Optional indexes
CREATE INDEX idx_bundle_items_bundle_id ON product_bundle_items(bundle_id);
CREATE INDEX idx_bundle_items_product_id ON product_bundle_items(product_id);