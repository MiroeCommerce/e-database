CREATE TABLE shipment_items (
    shipment_item_id BIGSERIAL PRIMARY KEY,
    shipment_id BIGINT NOT NULL,
    order_item_id BIGINT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_shipment_items_shipment
        FOREIGN KEY (shipment_id) REFERENCES order_shipments(shipment_id),
    CONSTRAINT fk_shipment_items_order_item
        FOREIGN KEY (order_item_id) REFERENCES order_items(order_item_id),

    CONSTRAINT uq_shipment_items UNIQUE (shipment_id, order_item_id)
);

CREATE INDEX idx_shipment_items_shipment_id ON shipment_items(shipment_id);
CREATE INDEX idx_shipment_items_order_item_id ON shipment_items(order_item_id);