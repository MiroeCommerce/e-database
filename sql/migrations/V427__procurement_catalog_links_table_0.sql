CREATE TABLE procurement_catalog_links (
    link_id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    supplier_catalog_id BIGINT NOT NULL,
    catalog_product_code VARCHAR(100),
    notes TEXT
);