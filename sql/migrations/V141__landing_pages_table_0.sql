CREATE TABLE landing_pages (
    page_id BIGSERIAL PRIMARY KEY,
    campaign_id BIGINT REFERENCES marketing_campaigns(campaign_id) ON DELETE SET NULL,
    title VARCHAR(255) NOT NULL,
    url VARCHAR(500) NOT NULL UNIQUE,
    content TEXT, -- HTML or template reference
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);