CREATE TABLE vendor_payment_terms (
    term_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    payment_cycle VARCHAR(50),
    due_days INT,
    penalty_rate NUMERIC(5,2),
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);