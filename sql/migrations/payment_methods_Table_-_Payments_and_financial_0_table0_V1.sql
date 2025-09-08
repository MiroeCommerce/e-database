CREATE TABLE payment_methods (
    method_id    BIGSERIAL PRIMARY KEY,
    name         VARCHAR(100) NOT NULL,
    type         VARCHAR(50) NOT NULL,
    region       VARCHAR(50),
    active       BOOLEAN DEFAULT TRUE,
    display_order INT DEFAULT 0,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);