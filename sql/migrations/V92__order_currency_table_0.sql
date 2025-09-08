CREATE TABLE order_currency (
    currency_id SERIAL PRIMARY KEY,
    currency_code VARCHAR(3) NOT NULL UNIQUE,
    currency_name VARCHAR(50) NOT NULL,
    symbol VARCHAR(10),
    exchange_rate_to_usd NUMERIC(12,6) NOT NULL CHECK (exchange_rate_to_usd > 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_order_currency_code ON order_currency(currency_code);