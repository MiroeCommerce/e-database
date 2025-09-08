CREATE TABLE integration_logs (
    integration_log_id SERIAL PRIMARY KEY,
    system_name VARCHAR(255) NOT NULL, -- e.g., ERP, CRM
    action_type VARCHAR(100), -- e.g., sync, fetch, push
    payload JSONB,
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Success, Failed
    response TEXT,
    executed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by INT
);