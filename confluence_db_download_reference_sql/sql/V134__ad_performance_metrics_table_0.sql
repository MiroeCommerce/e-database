CREATE TABLE ad_performance_metrics (
    metric_id BIGSERIAL PRIMARY KEY,
    platform_id BIGINT NOT NULL REFERENCES ad_platform_integrations(platform_id) ON DELETE CASCADE,
    campaign_id BIGINT REFERENCES marketing_campaigns(campaign_id) ON DELETE SET NULL,
    impressions BIGINT DEFAULT 0,
    clicks BIGINT DEFAULT 0,
    cpc NUMERIC(10,2), -- cost per click
    spend NUMERIC(12,2), -- total ad spend
    roi NUMERIC(10,2), -- return on investment
    report_date DATE NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);