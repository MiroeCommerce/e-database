CREATE TABLE marketplace_refund_requests (
    refund_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    vendor_id BIGINT NOT NULL,
    customer_id BIGINT NOT NULL,
    refund_amount NUMERIC NOT NULL,
    refund_status VARCHAR(50),
    requested_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    processed_at TIMESTAMP,
    notes TEXT
);