CREATE TABLE payment_notifications (
    notification_id BIGSERIAL PRIMARY KEY,
    payment_id      BIGINT NOT NULL REFERENCES payments(payment_id),
    channel         VARCHAR(50) NOT NULL, -- email, SMS, webhook
    status          VARCHAR(50) NOT NULL, -- sent, failed
    sent_at         TIMESTAMP,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);