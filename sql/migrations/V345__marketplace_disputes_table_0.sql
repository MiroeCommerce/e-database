CREATE TABLE marketplace_disputes (
    dispute_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    vendor_id BIGINT NOT NULL,
    customer_id BIGINT NOT NULL,
    dispute_reason TEXT,
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP,
    notes TEXT
);