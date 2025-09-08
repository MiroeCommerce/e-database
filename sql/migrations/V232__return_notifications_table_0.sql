CREATE TABLE return_notifications (
    notification_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    notification_type VARCHAR(100),
    message TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'unread',
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);