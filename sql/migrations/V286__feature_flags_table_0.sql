CREATE TABLE feature_flags (
    flag_id SERIAL PRIMARY KEY,
    flag_name VARCHAR(255) NOT NULL UNIQUE,
    is_enabled BOOLEAN DEFAULT FALSE,
    rollout_scope VARCHAR(50), -- e.g., all, role-based, user-based
    description TEXT,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);