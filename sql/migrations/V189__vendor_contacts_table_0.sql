CREATE TABLE vendor_contacts (
    contact_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(50),
    role VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);