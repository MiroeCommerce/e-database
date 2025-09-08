CREATE TABLE customer_notifications (
    notification_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    customer_id BIGINT NOT NULL,
    notification_type VARCHAR(50) NOT NULL,
    channel VARCHAR(20) NOT NULL,
    status VARCHAR(50) NOT NULL,
    message TEXT,
    sent_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_customer_notifications_order
        FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE INDEX idx_customer_notifications_order_id ON customer_notifications(order_id);
CREATE INDEX idx_customer_notifications_customer_id ON customer_notifications(customer_id);
CREATE INDEX idx_customer_notifications_type ON customer_notifications(notification_type);