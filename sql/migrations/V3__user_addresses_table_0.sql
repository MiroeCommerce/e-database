CREATE TABLE user_addresses (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_id UUID NOT NULL,
    address_type VARCHAR(20) NOT NULL CHECK (address_type IN ('shipping', 'billing', 'office')),
    is_default BOOLEAN DEFAULT FALSE,

    full_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    company VARCHAR(255),

    street_address TEXT NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100) NOT NULL,

    notes TEXT,

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Foreign Key Constraint
ALTER TABLE user_addresses
ADD CONSTRAINT fk_user_addresses_user
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;

--  Indexes
CREATE INDEX idx_user_addresses_user_id ON user_addresses(user_id);
CREATE INDEX idx_user_addresses_type ON user_addresses(address_type);