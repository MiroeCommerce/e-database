CREATE TABLE refunds (
    refund_id      BIGSERIAL PRIMARY KEY,
    payment_id     BIGINT NOT NULL,
    amount         NUMERIC(12,2) NOT NULL,
    reason_id      BIGINT,
    processed_by   BIGINT,
    status         VARCHAR(50) NOT NULL,
    created_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);