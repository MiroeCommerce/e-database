CREATE TABLE ad_platform_integrations (
    platform_id BIGSERIAL PRIMARY KEY,
    platform_name VARCHAR(255) NOT NULL, -- e.g., Google Ads, Facebook Ads
    api_key TEXT NOT NULL,
    settings JSONB, -- stores additional integration details
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);