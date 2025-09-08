CREATE TABLE inventory_audit_logs (
    id BIGSERIAL PRIMARY KEY,
    warehouse_id BIGINT NOT NULL,
    audited_by VARCHAR(100) NOT NULL,
    audit_date DATE NOT NULL,
    audit_notes TEXT,
    discrepancies JSONB,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (warehouse_id) REFERENCES warehouses(id)
);