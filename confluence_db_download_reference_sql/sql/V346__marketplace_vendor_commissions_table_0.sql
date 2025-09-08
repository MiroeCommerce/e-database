CREATE TABLE marketplace_vendor_commissions (
    commission_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    commission_type VARCHAR(50),
    commission_rate NUMERIC,
    effective_from DATE,
    effective_to DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);