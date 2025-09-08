CREATE TABLE order_returns (
    return_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    order_item_id BIGINT,
    return_reason_id INT,
    return_status VARCHAR(50) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    refund_amount NUMERIC(12,2) DEFAULT 0 CHECK (refund_amount >= 0),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_returns_order
        FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT fk_order_returns_order_item
        FOREIGN KEY (order_item_id) REFERENCES order_items(order_item_id),
    CONSTRAINT fk_order_returns_reason
        FOREIGN KEY (return_reason_id) REFERENCES return_reasons(reason_id)
);

CREATE INDEX idx_order_returns_order_id ON order_returns(order_id);
CREATE INDEX idx_order_returns_order_item_id ON order_returns(order_item_id);
CREATE INDEX idx_order_returns_status ON order_returns(return_status);