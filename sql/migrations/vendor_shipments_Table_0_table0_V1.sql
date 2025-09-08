CREATE TABLE vendor_shipments (
    shipment_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    product_id INT NOT NULL,
    shipment_date DATE NOT NULL,
    quantity INT,
    tracking_number VARCHAR(100),
    status VARCHAR(50) DEFAULT 'in_transit',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);