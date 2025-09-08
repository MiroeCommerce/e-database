CREATE TABLE gift_cards (
    gift_card_id BIGSERIAL PRIMARY KEY,
    code         VARCHAR(50) NOT NULL UNIQUE,
    initial_amount NUMERIC(12,2) NOT NULL,
    balance      NUMERIC(12,2) NOT NULL,
    currency     CHAR(3) NOT NULL,
    is_active    BOOLEAN DEFAULT TRUE,
    issued_to    BIGINT,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);