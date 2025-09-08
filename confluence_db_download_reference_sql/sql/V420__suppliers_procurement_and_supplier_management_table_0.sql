CREATE TABLE suppliers (
    supplier_id BIGSERIAL PRIMARY KEY,
    supplier_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255),
    contact_phone VARCHAR(50),
    rating NUMERIC,
    certification_info TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);