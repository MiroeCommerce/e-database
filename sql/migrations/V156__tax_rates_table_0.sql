CREATE TABLE tax_rates (
    rate_id      BIGSERIAL PRIMARY KEY,
    tax_class_id BIGINT NOT NULL,
    jurisdiction_id BIGINT NOT NULL,
    percentage   NUMERIC(5,2) NOT NULL,
    effective_from TIMESTAMP NOT NULL,
    effective_to TIMESTAMP,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);