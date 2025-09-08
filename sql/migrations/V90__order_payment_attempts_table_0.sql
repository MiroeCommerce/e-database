CREATE TABLE order_payment_attempts (
    attempt_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    payment_method_id INT NOT NULL,
    attempt_status VARCHAR(50) NOT NULL,
    amount NUMERIC(12,2) NOT NULL CHECK (amount >= 0),
    transaction_id VARCHAR(100),
    attempted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_payment_attempts_order
        FOREIGN KEY (order_id) REFERENCES orders(id),
    CONSTRAINT fk_order_payment_attempts_method
        FOREIGN KEY (payment_method_id) REFERENCES payment_methods(payment_method_id)
);

CREATE INDEX idx_order_payment_attempts_order_id ON order_payment_attempts(order_id);
CREATE INDEX idx_order_payment_attempts_method_id ON order_payment_attempts(payment_method_id);
CREATE INDEX idx_order_payment_attempts_status ON order_payment_attempts(attempt_status);