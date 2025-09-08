CREATE TABLE marketplace_product_returns (
    return_id BIGSERIAL PRIMARY KEY,
    order_item_id BIGINT NOT NULL,
    vendor_id BIGINT NOT NULL,
    customer_id BIGINT NOT NULL,
    return_reason TEXT,
    return_status VARCHAR(50),
    returned_at TIMESTAMP,
    processed_at TIMESTAMP,
    notes TEXT
);