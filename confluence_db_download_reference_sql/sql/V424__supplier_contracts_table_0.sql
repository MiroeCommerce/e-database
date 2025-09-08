CREATE TABLE supplier_contracts (
    contract_id BIGSERIAL PRIMARY KEY,
    supplier_id BIGINT NOT NULL,
    contract_name VARCHAR(255),
    start_date DATE,
    end_date DATE,
    terms TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);