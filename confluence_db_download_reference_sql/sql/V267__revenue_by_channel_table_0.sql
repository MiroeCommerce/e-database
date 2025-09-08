CREATE TABLE revenue_by_channel (
    revenue_id SERIAL PRIMARY KEY,
    channel_name VARCHAR(100) NOT NULL, -- e.g., website, mobile app, social media, affiliates
    revenue_amount NUMERIC(12,2) NOT NULL,
    order_count INT DEFAULT 0,
    attribution_model VARCHAR(50) DEFAULT 'last_touch', -- e.g., first_touch, last_touch, multi_touch
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);