CREATE TABLE payment_attempts (
    attempt_id     BIGSERIAL PRIMARY KEY,
    payment_id     BIGINT NOT NULL,
    attempt_time   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status         VARCHAR(50) NOT NULL,
    failure_reason VARCHAR(255),
    ip_address     VARCHAR(45),
    user_agent     TEXT
);