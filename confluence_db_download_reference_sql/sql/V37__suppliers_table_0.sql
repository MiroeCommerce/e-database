CREATE TABLE suppliers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(50),
    address TEXT,
    country VARCHAR(100),
    payment_terms VARCHAR(100),
    notes TEXT,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

-- Optional indexes
CREATE INDEX idx_suppliers_name ON suppliers(name);
CREATE INDEX idx_suppliers_country ON suppliers(country);