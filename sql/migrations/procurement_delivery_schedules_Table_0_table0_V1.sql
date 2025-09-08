CREATE TABLE procurement_delivery_schedules (
    schedule_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    order_item_id BIGINT,
    expected_delivery_date DATE,
    actual_delivery_date DATE,
    status VARCHAR(50),
    notes TEXT
);