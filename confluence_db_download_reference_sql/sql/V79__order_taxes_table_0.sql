CREATE TABLE order_taxes (
    order_tax_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    order_item_id BIGINT,
    tax_name VARCHAR(100) NOT NULL,
    tax_rate NUMERIC(5,2) NOT NULL CHECK (tax_rate >= 0),
    tax_amount NUMERIC(12,2) NOT NULL CHECK (tax_amount >= 0),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_taxes_order
        FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT fk_order_taxes_order_item
        FOREIGN KEY (order_item_id) REFERENCES order_items(order_item_id)
);

CREATE INDEX idx_order_taxes_order_id ON order_taxes(order_id);
CREATE INDEX idx_order_taxes_order_item_id ON order_taxes(order_item_id);