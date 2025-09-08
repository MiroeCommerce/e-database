CREATE TABLE product_attributes_groups (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

-- Optional index for fast lookups by name
CREATE INDEX idx_product_attributes_groups_name ON product_attributes_groups(name);