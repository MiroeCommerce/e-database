CREATE TABLE invoices (
    invoice_id   BIGSERIAL PRIMARY KEY,
    order_id     BIGINT NOT NULL,
    customer_id  BIGINT NOT NULL,
    invoice_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    due_date     TIMESTAMP,
    total_amount NUMERIC(12,2) NOT NULL,
    status       VARCHAR(50) NOT NULL, -- draft, issued, paid
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);