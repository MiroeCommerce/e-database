CREATE TABLE rma_tracking_info (
    tracking_id SERIAL PRIMARY KEY,
    rma_id INT NOT NULL REFERENCES rma_requests(rma_id),
    carrier_name VARCHAR(100),
    tracking_number VARCHAR(100),
    status VARCHAR(50) DEFAULT 'in_transit',
    estimated_delivery DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);