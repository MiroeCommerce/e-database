CREATE TABLE affiliate_clicks (
    click_id BIGSERIAL PRIMARY KEY,
    partner_id BIGINT NOT NULL REFERENCES affiliate_partners(partner_id) ON DELETE CASCADE,
    click_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(50),
    user_agent TEXT,
    tracking_code VARCHAR(255)
);