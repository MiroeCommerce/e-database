CREATE TABLE banner_ads (
    banner_id BIGSERIAL PRIMARY KEY,
    campaign_id BIGINT REFERENCES marketing_campaigns(campaign_id) ON DELETE SET NULL,
    image_url VARCHAR(500) NOT NULL,
    link_url VARCHAR(500),
    alt_text VARCHAR(255),
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);