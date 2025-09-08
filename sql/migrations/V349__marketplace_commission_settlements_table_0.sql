CREATE TABLE marketplace_commission_settlements (
    settlement_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    total_commission NUMERIC NOT NULL,
    settled_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);