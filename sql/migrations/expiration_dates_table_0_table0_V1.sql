CREATE TABLE expiration_dates (
    id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    variant_id BIGINT,
    batch_number_id BIGINT,
    expiration_date DATE NOT NULL,
    alert_days_prior INTEGER DEFAULT 30 CHECK (alert_days_prior >= 0),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(id),
    FOREIGN KEY (batch_number_id) REFERENCES product_batch_numbers(id)
);