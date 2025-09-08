CREATE TABLE procurement_approval_logs (
    log_id BIGSERIAL PRIMARY KEY,
    request_id BIGINT NOT NULL,
    flow_id BIGINT NOT NULL,
    approved_by BIGINT,
    approval_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    comments TEXT,
    notes TEXT
);