CREATE TABLE transaction_fees (
    fee_id       BIGSERIAL PRIMARY KEY,
    payment_id   BIGINT NOT NULL,
    gateway_id   BIGINT,
    fee_type     VARCHAR(50), -- processing, service, other
    amount       NUMERIC(12,2) NOT NULL,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);