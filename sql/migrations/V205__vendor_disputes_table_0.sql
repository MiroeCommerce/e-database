CREATE TABLE vendor_disputes (
    dispute_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    dispute_type VARCHAR(100),
    description TEXT,
    status VARCHAR(50) DEFAULT 'open',
    resolution_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);