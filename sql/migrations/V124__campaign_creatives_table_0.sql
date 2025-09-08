CREATE TABLE campaign_creatives (
    creative_id BIGSERIAL PRIMARY KEY,
    campaign_id BIGINT NOT NULL REFERENCES marketing_campaigns(campaign_id) ON DELETE CASCADE,
    creative_type VARCHAR(100) NOT NULL, -- banner, subject_line, ad_copy, image
    content TEXT NOT NULL, -- HTML, text, or media reference
    variant VARCHAR(50), -- for A/B testing
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);