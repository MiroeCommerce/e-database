CREATE TABLE environment_variables (
    env_var_id SERIAL PRIMARY KEY,
    variable_name VARCHAR(255) NOT NULL UNIQUE,
    variable_value TEXT NOT NULL,
    description TEXT,
    is_encrypted BOOLEAN DEFAULT FALSE,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);