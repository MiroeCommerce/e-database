CREATE TABLE marketplace_vendor_categories (
    category_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    category_name VARCHAR(255) NOT NULL,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);