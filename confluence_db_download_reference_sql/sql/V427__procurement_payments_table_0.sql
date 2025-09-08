CREATE TABLE procurement_payments (
    payment_id BIGSERIAL PRIMARY KEY,
    invoice_id BIGINT NOT NULL,
    supplier_id BIGINT NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount NUMERIC NOT NULL,
    payment_method VARCHAR(50),
    status VARCHAR(50),
    notes TEXT
);