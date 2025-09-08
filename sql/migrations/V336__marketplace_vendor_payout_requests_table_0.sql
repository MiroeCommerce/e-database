CREATE TABLE marketplace_vendor_payout_requests (
    request_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    requested_amount NUMERIC NOT NULL,
    request_status VARCHAR(50),
    requested_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    processed_at TIMESTAMP,
    notes TEXT
);