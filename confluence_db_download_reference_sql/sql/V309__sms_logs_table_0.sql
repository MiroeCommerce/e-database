CREATE TABLE sms_logs (
    sms_log_id SERIAL PRIMARY KEY,
    recipient_number VARCHAR(20) NOT NULL,
    message TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Sent, Failed
    sent_at TIMESTAMP,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);