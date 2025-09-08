CREATE TABLE campaign_channels (
    channel_id BIGSERIAL PRIMARY KEY,
    campaign_id BIGINT NOT NULL REFERENCES marketing_campaigns(campaign_id) ON DELETE CASCADE,
    channel_type VARCHAR(100) NOT NULL, -- e.g., email, sms, ads, push_notification
    details JSONB, -- stores channel-specific configuration (API keys, templates, etc.)
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);