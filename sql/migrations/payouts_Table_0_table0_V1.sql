CREATE TABLE payouts (
    payout_id   BIGSERIAL PRIMARY KEY,
    schedule_id BIGINT NOT NULL REFERENCES payout_schedules(schedule_id),
    amount      NUMERIC(12,2) NOT NULL,
    status      VARCHAR(50) NOT NULL, -- pending, completed
    paid_at     TIMESTAMP,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);