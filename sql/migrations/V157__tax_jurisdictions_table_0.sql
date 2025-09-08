CREATE TABLE tax_jurisdictions (
    jurisdiction_id BIGSERIAL PRIMARY KEY,
    country_code    CHAR(2) NOT NULL,
    state_code      VARCHAR(10),
    description     TEXT,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);