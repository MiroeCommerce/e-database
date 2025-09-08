CREATE TABLE invoice_items (
    invoice_item_id BIGSERIAL PRIMARY KEY,
    invoice_id BIGINT NOT NULL,
    order_item_id BIGINT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price NUMERIC(12,2) NOT NULL CHECK (unit_price >= 0),
    tax_amount NUMERIC(12,2) DEFAULT 0 CHECK (tax_amount >= 0),
    discount_amount NUMERIC(12,2) DEFAULT 0 CHECK (discount_amount >= 0),
    line_total NUMERIC(12,2) GENERATED ALWAYS AS
        ((quantity * unit_price) - discount_amount + tax_amount) STORED,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_invoice_items_invoice
        FOREIGN KEY (invoice_id) REFERENCES order_invoices(invoice_id),
    CONSTRAINT fk_invoice_items_order_item
        FOREIGN KEY (order_item_id) REFERENCES order_items(order_item_id)
);

CREATE INDEX idx_invoice_items_invoice_id ON invoice_items(invoice_id);
CREATE INDEX idx_invoice_items_order_item_id ON invoice_items(order_item_id);