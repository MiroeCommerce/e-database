CREATE TABLE webhook_logs (
    webhook_log_id SERIAL PRIMARY KEY,
    webhook_url VARCHAR(500) NOT NULL,
    payload JSONB,
    response_status VARCHAR(50), -- e.g., 200, 400, 500
    response_body TEXT,
    direction VARCHAR(10) NOT NULL, -- inbound or outbound
    triggered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by INT
);