CREATE TABLE subscription_notifications (
    notification_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    notification_type VARCHAR(50), -- e.g., email, SMS
    message TEXT,
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Sent, Failed
    sent_at TIMESTAMP,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);