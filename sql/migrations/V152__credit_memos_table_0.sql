CREATE TABLE credit_memos (
    credit_memo_id BIGSERIAL PRIMARY KEY,
    invoice_id     BIGINT NOT NULL,
    amount         NUMERIC(12,2) NOT NULL,
    reason_id      BIGINT,
    created_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);