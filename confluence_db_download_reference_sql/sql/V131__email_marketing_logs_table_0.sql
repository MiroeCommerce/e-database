CREATE TABLE email_marketing_logs (
    log_id BIGSERIAL PRIMARY KEY,
    campaign_id BIGINT REFERENCES marketing_campaigns(campaign_id) ON DELETE SET NULL,
    customer_id BIGINT NOT NULL,
    email_address VARCHAR(255) NOT NULL,
    subject_line VARCHAR(255),
    status VARCHAR(50) NOT NULL, -- sent, bounced, opened, clicked
    sent_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    opened_at TIMESTAMP,
    clicked_at TIMESTAMP,
    bounce_reason TEXT
);