CREATE TABLE order_tax_rates (
    tax_rate_id BIGSERIAL PRIMARY KEY,
    region VARCHAR(100) NOT NULL,
    product_category VARCHAR(100),
    tax_rate NUMERIC(5,2) NOT NULL CHECK (tax_rate >= 0),
    description TEXT,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_order_tax_rates_region ON order_tax_rates(region);
CREATE INDEX idx_order_tax_rates_category ON order_tax_rates(product_category);