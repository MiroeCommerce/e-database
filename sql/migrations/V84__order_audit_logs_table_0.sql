CREATE TABLE order_audit_logs (
    audit_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    user_id BIGINT,
    action VARCHAR(100) NOT NULL,
    previous_value JSONB,
    new_value JSONB,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_audit_logs_order
        FOREIGN KEY (order_id) REFERENCES orders(id)
);

CREATE INDEX idx_order_audit_logs_order_id ON order_audit_logs(order_id);
CREATE INDEX idx_order_audit_logs_user_id ON order_audit_logs(user_id);
CREATE INDEX idx_order_audit_logs_action ON order_audit_logs(action);