-- CREATE TABLE warehouses (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     code VARCHAR(50) UNIQUE,
--     address TEXT,
--     city VARCHAR(100),
--     state VARCHAR(100),
--     country VARCHAR(100),
--     postal_code VARCHAR(20),
--     is_virtual BOOLEAN DEFAULT FALSE,
--     created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
--     updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
-- );

-- -- Optional index for quick lookups
-- CREATE INDEX idx_warehouses_country ON warehouses(country);

CREATE TABLE warehouses (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(50) NOT NULL UNIQUE,
    address_line1 VARCHAR(255) NOT NULL,
    address_line2 VARCHAR(255),
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100),
    contact_phone VARCHAR(50),
    contact_email VARCHAR(100),
    capacity_units INTEGER,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- Optional index for quick lookups
CREATE INDEX idx_warehouses_country ON warehouses(country);