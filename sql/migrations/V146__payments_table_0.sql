CREATE TABLE payments (
    payment_id       BIGSERIAL PRIMARY KEY,
    order_id         BIGINT NOT NULL,
    amount           NUMERIC(12,2) NOT NULL,
    currency         VARCHAR(10) NOT NULL,
    status           VARCHAR(50) NOT NULL,
    method_id        BIGINT NOT NULL,
    gateway_id       BIGINT,
    transaction_ref  VARCHAR(255),
    created_at       TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at       TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);