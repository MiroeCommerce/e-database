CREATE TABLE marketplace_vendor_products (
    product_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    description TEXT,
    price NUMERIC NOT NULL,
    stock_quantity INT,
    category_id BIGINT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);