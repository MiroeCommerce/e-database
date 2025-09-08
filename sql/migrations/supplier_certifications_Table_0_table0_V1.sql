CREATE TABLE supplier_certifications (
    certification_id BIGSERIAL PRIMARY KEY,
    supplier_id BIGINT NOT NULL,
    certification_name VARCHAR(255),
    issued_by VARCHAR(255),
    issue_date DATE,
    expiry_date DATE,
    notes TEXT
);