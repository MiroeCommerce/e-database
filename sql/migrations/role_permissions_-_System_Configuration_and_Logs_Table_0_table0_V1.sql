CREATE TABLE role_permissions (
    permission_id SERIAL PRIMARY KEY,
    role_id INT NOT NULL, -- references user_roles
    permission_key VARCHAR(255) NOT NULL, -- e.g., manage_users, view_reports
    description TEXT,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);