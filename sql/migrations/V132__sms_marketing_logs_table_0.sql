CREATE TABLE sms_marketing_logs (
    log_id BIGSERIAL PRIMARY KEY,
    campaign_id BIGINT REFERENCES marketing_campaigns(campaign_id) ON DELETE SET NULL,
    customer_id BIGINT NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    message TEXT NOT NULL,
    status VARCHAR(50) NOT NULL, -- sent, delivered, failed
    sent_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delivered_at TIMESTAMP,
    failed_reason TEXT
);