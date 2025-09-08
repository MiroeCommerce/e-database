CREATE TABLE sms_campaign_performance (
    report_id SERIAL PRIMARY KEY,
    campaign_id INT,
    sent_count INT DEFAULT 0,
    delivered_count INT DEFAULT 0,
    click_count INT DEFAULT 0,
    conversion_count INT DEFAULT 0,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);