CREATE TABLE audit_logs (
    audit_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL, -- who performed the action
    action_type VARCHAR(100) NOT NULL, -- e.g., login, update, delete
    entity_type VARCHAR(50) NOT NULL, -- e.g., user, order, system_setting
    entity_id INT, -- optional reference to the affected entity
    action_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    details TEXT -- optional additional info
);