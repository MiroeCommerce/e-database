CREATE TABLE analytics_dashboard_configs (
    config_id SERIAL PRIMARY KEY,
    user_id INT,
    role_id INT,
    widget_layout JSONB NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);