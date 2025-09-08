CREATE TABLE currency_exchange_rates (
    rate_id       BIGSERIAL PRIMARY KEY,
    currency_code CHAR(3) NOT NULL REFERENCES currency_settings(currency_code),
    rate          NUMERIC(12,6) NOT NULL,
    effective_date TIMESTAMP NOT NULL,
    created_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);