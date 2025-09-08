CREATE TABLE product_option_values (
    id SERIAL PRIMARY KEY,
    product_option_id INTEGER NOT NULL REFERENCES product_options(id) ON DELETE CASCADE,
    value VARCHAR(255) NOT NULL,
    price_modifier NUMERIC(10,2) DEFAULT 0,
    is_default BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

-- Indexes for quick lookups
CREATE INDEX idx_option_values_option_id ON product_option_values(product_option_id);
CREATE INDEX idx_option_values_value ON product_option_values(value);