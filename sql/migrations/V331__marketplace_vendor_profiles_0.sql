CREATE TABLE marketplace_vendor_profiles (
    profile_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    company_name VARCHAR(255),
    tax_id VARCHAR(50),
    address TEXT,
    website VARCHAR(255),
    contact_person VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);