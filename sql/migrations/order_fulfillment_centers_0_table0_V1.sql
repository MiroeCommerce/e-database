CREATE TABLE order_fulfillment_centers (
    center_id BIGSERIAL PRIMARY KEY,
    center_name VARCHAR(100) NOT NULL,
    address JSONB,
    contact_email VARCHAR(100),
    contact_phone VARCHAR(50),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_order_fulfillment_centers_name ON order_fulfillment_centers(center_name);