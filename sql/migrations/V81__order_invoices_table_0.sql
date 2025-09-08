CREATE TABLE order_invoices (
    invoice_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    invoice_number VARCHAR(50) NOT NULL UNIQUE,
    invoice_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total_amount NUMERIC(12,2) NOT NULL CHECK (total_amount >= 0),
    currency_code VARCHAR(3) NOT NULL DEFAULT 'USD',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_invoices_order
        FOREIGN KEY (order_id) REFERENCES orders(id)
);

CREATE INDEX idx_order_invoices_order_id ON order_invoices(order_id);
CREATE INDEX idx_order_invoices_invoice_number ON order_invoices(invoice_number);