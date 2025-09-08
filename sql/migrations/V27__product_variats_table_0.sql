CREATE TABLE product_variants (
    variant_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    product_id UUID NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
    sku VARCHAR(100) UNIQUE NOT NULL,
    variant_name VARCHAR(255),
    price NUMERIC(10,2) NOT NULL,
    stock_quantity INTEGER DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);