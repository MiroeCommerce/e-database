CREATE TABLE product_related_items (
    product_id INTEGER NOT NULL REFERENCES products(id) ON DELETE CASCADE,
    related_product_id INTEGER NOT NULL REFERENCES products(id) ON DELETE CASCADE,
    relation_type VARCHAR(50) DEFAULT 'related',
    position INTEGER DEFAULT 0,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    PRIMARY KEY (product_id, related_product_id)
);

-- Optional indexes for fast lookup
CREATE INDEX idx_related_items_product_id ON product_related_items(product_id);
CREATE INDEX idx_related_items_related_product_id ON product_related_items(related_product_id);