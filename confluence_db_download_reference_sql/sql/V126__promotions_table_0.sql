CREATE TABLE promotions (
    promotion_id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    promotion_type VARCHAR(100) NOT NULL, -- e.g., discount, coupon, loyalty_bonus
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP,
    status VARCHAR(50) NOT NULL DEFAULT 'active', -- active, expired, scheduled
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);