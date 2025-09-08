CREATE TABLE product_price_history (
    id SERIAL PRIMARY KEY,
    product_variant_id UUID NOT NULL REFERENCES product_variants(variant_id) ON DELETE CASCADE,
    price NUMERIC(10,2) NOT NULL,
    currency VARCHAR(10) NOT NULL DEFAULT 'USD',
    start_date DATE NOT NULL,
    end_date DATE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

-- Optional indexes for efficient queries
CREATE INDEX idx_price_history_variant_id ON product_price_history(product_variant_id);
CREATE INDEX idx_price_history_start_date ON product_price_history(start_date);