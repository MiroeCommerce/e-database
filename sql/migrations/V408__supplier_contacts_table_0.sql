CREATE TABLE supplier_contacts (
    contact_id BIGSERIAL PRIMARY KEY,
    supplier_id BIGINT NOT NULL,
    contact_name VARCHAR(255),
    contact_email VARCHAR(255),
    contact_phone VARCHAR(50),
    role VARCHAR(100),
    notes TEXT
);