CREATE TABLE affiliate_conversions (
    conversion_id BIGSERIAL PRIMARY KEY,
    partner_id BIGINT NOT NULL REFERENCES affiliate_partners(partner_id) ON DELETE CASCADE,
    order_id BIGINT NOT NULL,
    revenue NUMERIC(12,2) NOT NULL,
    commission NUMERIC(12,2) NOT NULL,
    conversion_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);