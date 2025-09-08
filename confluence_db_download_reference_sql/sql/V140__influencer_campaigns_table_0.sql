CREATE TABLE influencer_campaigns (
    influencer_campaign_id BIGSERIAL PRIMARY KEY,
    influencer_id BIGINT NOT NULL REFERENCES influencer_profiles(influencer_id) ON DELETE CASCADE,
    campaign_id BIGINT NOT NULL REFERENCES marketing_campaigns(campaign_id) ON DELETE CASCADE,
    deliverables TEXT, -- e.g., posts, stories, videos
    unique_link VARCHAR(255), -- tracking link for conversions
    compensation NUMERIC(12,2), -- agreed payment
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);