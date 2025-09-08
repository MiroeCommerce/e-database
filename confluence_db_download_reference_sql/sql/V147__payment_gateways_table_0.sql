CREATE TABLE payment_gateways (
    gateway_id   BIGSERIAL PRIMARY KEY,
    name         VARCHAR(100) NOT NULL,
    provider     VARCHAR(100) NOT NULL,
    api_key      TEXT NOT NULL,
    sandbox_mode BOOLEAN DEFAULT TRUE,
    active       BOOLEAN DEFAULT TRUE,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);