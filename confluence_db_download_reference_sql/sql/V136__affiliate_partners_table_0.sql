CREATE TABLE affiliate_partners (
    partner_id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact_info JSONB, -- stores email, phone, etc.
    tracking_id VARCHAR(255) UNIQUE NOT NULL,
    payment_details JSONB, -- payout method, bank info, etc.
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);