CREATE TABLE marketplace_shipping_fees (
    fee_id BIGSERIAL PRIMARY KEY,
    shipping_option_id BIGINT NOT NULL,
    vendor_id BIGINT NOT NULL,
    fee_amount NUMERIC NOT NULL,
    currency VARCsHAR(10),
    effective_from DATE,
    effective_to DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);