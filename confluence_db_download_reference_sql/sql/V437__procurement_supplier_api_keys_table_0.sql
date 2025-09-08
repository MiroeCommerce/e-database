CREATE TABLE procurement_supplier_api_keys (
    api_key_id BIGSERIAL PRIMARY KEY,
    supplier_id BIGINT NOT NULL,
    api_key VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    notes TEXT
);