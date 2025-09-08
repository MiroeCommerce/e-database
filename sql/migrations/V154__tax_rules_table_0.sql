CREATE TABLE tax_rules (
    rule_id      BIGSERIAL PRIMARY KEY,
    tax_class_id BIGINT NOT NULL,
    jurisdiction_id BIGINT NOT NULL,
    rate NUMERIC(5,2) NOT NULL, -- percentage
    description TEXT,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);