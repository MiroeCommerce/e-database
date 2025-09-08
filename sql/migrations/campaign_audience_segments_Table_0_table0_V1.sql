CREATE TABLE campaign_audience_segments (
    segment_id BIGSERIAL PRIMARY KEY,
    campaign_id BIGINT NOT NULL REFERENCES marketing_campaigns(campaign_id) ON DELETE CASCADE,
    segment_name VARCHAR(255) NOT NULL,
    criteria JSONB NOT NULL, -- dynamic targeting rules (e.g., age > 25, region = 'US')
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);