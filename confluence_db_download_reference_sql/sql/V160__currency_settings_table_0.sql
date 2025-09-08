CREATE TABLE currency_settings (
    currency_code CHAR(3) PRIMARY KEY,
    name          VARCHAR(50) NOT NULL,
    symbol        VARCHAR(5),
    exchange_rate NUMERIC(12,6) DEFAULT 1.0,
    is_active     BOOLEAN DEFAULT TRUE,
    created_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);