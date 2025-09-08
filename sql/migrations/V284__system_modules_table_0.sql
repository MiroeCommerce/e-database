CREATE TABLE system_modules (
    module_id SERIAL PRIMARY KEY,
    module_name VARCHAR(255) NOT NULL UNIQUE,
    is_enabled BOOLEAN DEFAULT TRUE,
    description TEXT,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);