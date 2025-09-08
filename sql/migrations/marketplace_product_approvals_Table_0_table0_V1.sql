CREATE TABLE marketplace_product_approvals (
    approval_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    vendor_id BIGINT NOT NULL,
    approval_status VARCHAR(50),
    approved_by VARCHAR(255),
    approval_date TIMESTAMP,
    notes TEXT
);