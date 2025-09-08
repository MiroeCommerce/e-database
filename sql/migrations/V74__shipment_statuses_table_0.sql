CREATE TABLE shipment_statuses (
    status_id SERIAL PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_shipment_statuses_status_name ON shipment_statuses(status_name);