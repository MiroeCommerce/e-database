CREATE TABLE user_roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL UNIQUE, -- e.g., Admin, Vendor, Support
    description TEXT,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);