CREATE TABLE campaign_performance (
    performance_id BIGSERIAL PRIMARY KEY,
    campaign_id BIGINT NOT NULL REFERENCES marketing_campaigns(campaign_id) ON DELETE CASCADE,
    impressions BIGINT DEFAULT 0,
    clicks BIGINT DEFAULT 0,
    conversions BIGINT DEFAULT 0,
    open_rate NUMERIC(5,2), -- percentage
    ctr NUMERIC(5,2), -- click-through rate percentage
    roi NUMERIC(10,2), -- return on investment
    report_date DATE NOT NULL DEFAULT CURRENT_DATE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);