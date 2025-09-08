CREATE TABLE shipping_methods (
    shipping_method_id UUID PRIMARY KEY,
    method_name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    base_rate NUMERIC(12,2) NOT NULL CHECK (base_rate >= 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_shipping_methods_name ON shipping_methods(method_name);
