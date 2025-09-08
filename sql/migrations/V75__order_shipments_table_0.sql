CREATE TABLE order_shipments (
    shipment_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    shipment_status_id INT NOT NULL,
    carrier VARCHAR(100),
    tracking_number VARCHAR(100),
    shipment_date TIMESTAMP,
    expected_delivery_date TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_shipments_order
        FOREIGN KEY (order_id) REFERENCES orders(id),
    CONSTRAINT fk_order_shipments_status
        FOREIGN KEY (shipment_status_id) REFERENCES shipment_statuses(status_id)
);

CREATE INDEX idx_order_shipments_order_id ON order_shipments(order_id);
CREATE INDEX idx_order_shipments_status_id ON order_shipments(shipment_status_id);
CREATE INDEX idx_order_shipments_tracking_number ON order_shipments(tracking_number);