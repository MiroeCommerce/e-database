CREATE TABLE system_currencies (
    currency_id SERIAL PRIMARY KEY,
    currency_code VARCHAR(10) NOT NULL UNIQUE, -- e.g., USD, EUR
    currency_name VARCHAR(100) NOT NULL,
    symbol VARCHAR(10),
    exchange_rate DECIMAL(18,6), -- relative to base currency
    is_default BOOLEAN DEFAULT FALSE,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);