CREATE TABLE order_payments (
    payment_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    payment_method_id INT NOT NULL,
    payment_status VARCHAR(50) NOT NULL,
    amount NUMERIC(12,2) NOT NULL CHECK (amount >= 0),
    currency_code VARCHAR(3) NOT NULL DEFAULT 'USD',
    transaction_id VARCHAR(100),
    payment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_order_payments_order
        FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT fk_order_payments_method
        FOREIGN KEY (payment_method_id) REFERENCES payment_methods(payment_method_id)
);

CREATE INDEX idx_order_payments_order_id ON order_payments(order_id);
CREATE INDEX idx_order_payments_method_id ON order_payments(payment_method_id);
CREATE INDEX idx_order_payments_status ON order_payments(payment_status);