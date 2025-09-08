CREATE TABLE vendor_rating_metrics (
    metric_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    fulfillment_rate NUMERIC(5,2),
    delay_rate NUMERIC(5,2),
    quality_score NUMERIC(5,2),
    calculation_date DATE DEFAULT CURRENT_DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);