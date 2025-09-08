CREATE TABLE procurement_disputes (
    dispute_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    supplier_id BIGINT NOT NULL,
    dispute_type VARCHAR(100),
    description TEXT,
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP,
    notes TEXT
);