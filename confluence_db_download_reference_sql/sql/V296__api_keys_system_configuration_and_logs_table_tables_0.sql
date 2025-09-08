CREATE TABLE api_keys (
    api_key_id SERIAL PRIMARY KEY,
    key_value VARCHAR(255) NOT NULL UNIQUE,
    description TEXT,
    scopes VARCHAR(500), -- comma-separated list of permissions
    status VARCHAR(50) DEFAULT 'Active', -- Active, Revoked, Expired
    expires_at TIMESTAMP,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);