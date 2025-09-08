CREATE TABLE marketplace_product_edits (
    edit_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    vendor_id BIGINT NOT NULL,
    edited_fields JSONB,
    edited_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    edited_by VARCHAR(255),
    notes TEXT
);