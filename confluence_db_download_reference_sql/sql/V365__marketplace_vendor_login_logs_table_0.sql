CREATE TABLE marketplace_vendor_login_logs (
    log_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(50),
    device_info TEXT,
    notes TEXT
);