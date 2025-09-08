CREATE TABLE marketplace_vendor_api_keys (
    api_key_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    service_name VARCHAR(255),
    api_key VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    notes TEXT
);