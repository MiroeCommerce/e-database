CREATE TABLE procurement_budget_allocations (
    allocation_id BIGSERIAL PRIMARY KEY,
    department_id BIGINT NOT NULL,
    budget_amount NUMERIC NOT NULL,
    allocated_by BIGINT,
    allocated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);