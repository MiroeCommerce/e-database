CREATE TABLE payout_schedules (
    schedule_id BIGSERIAL PRIMARY KEY,
    entity_type VARCHAR(50) NOT NULL, -- vendor, affiliate
    entity_id   BIGINT NOT NULL,
    frequency   VARCHAR(50) NOT NULL, -- weekly, monthly
    next_payout DATE NOT NULL,
    active      BOOLEAN DEFAULT TRUE,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);