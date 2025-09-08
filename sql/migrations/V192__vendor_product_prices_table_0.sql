CREATE TABLE vendor_product_prices (
    price_id SERIAL PRIMARY KEY,
    vendor_product_id INT NOT NULL REFERENCES vendor_products(vendor_product_id),
    cost_price NUMERIC(12,2) NOT NULL,
    volume_min INT,
    volume_max INT,
    vendor_sku VARCHAR(100),
    effective_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);