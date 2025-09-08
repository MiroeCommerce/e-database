CREATE TABLE procurement_requests (
    request_id BIGSERIAL PRIMARY KEY,
    department_id BIGINT NOT NULL,
    requested_by BIGINT NOT NULL,
    request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    priority VARCHAR(50),
    total_amount NUMERIC,
    notes TEXT
);