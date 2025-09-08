CREATE TABLE vendor_delivery_schedules (
    schedule_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    product_id INT NOT NULL,
    expected_delivery_date DATE NOT NULL,
    delivery_window_start TIME,
    delivery_window_end TIME,
    status VARCHAR(50) DEFAULT 'scheduled',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);