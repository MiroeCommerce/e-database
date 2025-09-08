CREATE TABLE payment_disputes (
    dispute_id   BIGSERIAL PRIMARY KEY,
    payment_id   BIGINT NOT NULL REFERENCES payments(payment_id),
    customer_id  BIGINT NOT NULL,
    status       VARCHAR(50) NOT NULL, -- open, resolved, rejected
    reason       TEXT,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);