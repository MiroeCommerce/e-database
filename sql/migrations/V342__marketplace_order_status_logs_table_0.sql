CREATE TABLE marketplace_order_status_logs (
    log_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    previous_status VARCHAR(50),
    new_status VARCHAR(50),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    changed_by VARCHAR(255),
    notes TEXT
);