CREATE TABLE api_rate_limits (
    rate_limit_id SERIAL PRIMARY KEY,
    api_key_id INT NOT NULL, -- references api_keys
    endpoint VARCHAR(255) NOT NULL,
    max_requests INT NOT NULL,
    time_window_seconds INT NOT NULL, -- duration in seconds
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);