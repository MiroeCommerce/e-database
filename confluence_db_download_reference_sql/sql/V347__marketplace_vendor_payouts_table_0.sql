CREATE TABLE marketplace_vendor_payouts (
    payout_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    amount NUMERIC NOT NULL,
    payout_method VARCHAR(50),
    payout_status VARCHAR(50),
    processed_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);