CREATE TABLE warehouse_zones (
    id BIGSERIAL PRIMARY KEY,
    warehouse_id BIGINT NOT NULL,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(50) NOT NULL,
    description TEXT,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (warehouse_id) REFERENCES warehouses(id),
    UNIQUE (warehouse_id, code)
);