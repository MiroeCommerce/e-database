CREATE TABLE payment_dispute_evidence (
    evidence_id  BIGSERIAL PRIMARY KEY,
    dispute_id   BIGINT NOT NULL REFERENCES payment_disputes(dispute_id),
    file_url     TEXT,
    description  TEXT,
    uploaded_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);