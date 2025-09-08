CREATE TABLE vendor_pricing_agreements (
    agreement_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    product_id INT NOT NULL,
    agreement_type VARCHAR(100),
    discount_rate NUMERIC(5,2),
    start_date DATE NOT NULL,
    end_date DATE,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);