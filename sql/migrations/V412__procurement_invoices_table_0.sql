CREATE TABLE procurement_invoices (
    invoice_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    supplier_id BIGINT NOT NULL,
    invoice_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount NUMERIC,
    status VARCHAR(50),
    notes TEXT
);