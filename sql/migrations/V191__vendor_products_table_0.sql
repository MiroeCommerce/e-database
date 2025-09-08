CREATE TABLE vendor_products (
    vendor_product_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    product_id INT NOT NULL,
    sku VARCHAR(100),
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);