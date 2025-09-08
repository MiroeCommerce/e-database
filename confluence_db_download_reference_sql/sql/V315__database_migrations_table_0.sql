CREATE TABLE database_migrations (
    migration_id SERIAL PRIMARY KEY,
    migration_name VARCHAR(255) NOT NULL,
    version VARCHAR(50) NOT NULL,
    applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    applied_by INT NOT NULL,
    status VARCHAR(50) DEFAULT 'Success', -- Success, Failed
    notes TEXT
);