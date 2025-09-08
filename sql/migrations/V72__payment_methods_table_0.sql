CREATE TABLE payment_methods (
    payment_method_id SERIAL PRIMARY KEY,
    method_name VARCHAR(50) NOT NULL UNIQUE,
    type         VARCHAR(50) NOT NULL,
    region       VARCHAR(50),
    description TEXT,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    display_order INT DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_payment_methods_method_name ON payment_methods(method_name);