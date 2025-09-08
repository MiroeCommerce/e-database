CREATE TABLE procurement_notifications (
    notification_id BIGSERIAL PRIMARY KEY,
    entity_name VARCHAR(100),
    entity_id BIGINT,
    message TEXT,
    recipient_id BIGINT,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    read_at TIMESTAMP,
    notes TEXT
);