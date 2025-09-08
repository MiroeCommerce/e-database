CREATE TABLE procurement_stock_receipts (
    receipt_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    order_item_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    received_quantity INT NOT NULL,
    quality_check_result VARCHAR(50),
    received_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);