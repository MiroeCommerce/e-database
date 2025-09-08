CREATE TABLE marketplace_shipping_options (
    shipping_option_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    option_name VARCHAR(255) NOT NULL,
    delivery_time VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);