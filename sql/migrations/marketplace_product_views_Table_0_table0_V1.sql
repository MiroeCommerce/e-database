CREATE TABLE marketplace_product_views (
    view_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    vendor_id BIGINT NOT NULL,
    customer_id BIGINT,
    viewed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);