CREATE TABLE product_discounts (
    id SERIAL PRIMARY KEY,
    product_id UUID NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
    variant_id UUID REFERENCES product_variants(variant_id) ON DELETE CASCADE,
    discount_type VARCHAR(50) NOT NULL,
    discount_value NUMERIC(10,2) NOT NULL,
    min_quantity INTEGER DEFAULT 1,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP,
    description TEXT,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

-- Indexes for filtering active discounts
CREATE INDEX idx_product_discounts_product_id ON product_discounts(product_id);
CREATE INDEX idx_product_discounts_variant_id ON product_discounts(variant_id);
CREATE INDEX idx_product_discounts_start_date ON product_discounts(start_date);
CREATE INDEX idx_product_discounts_end_date ON product_discounts(end_date);