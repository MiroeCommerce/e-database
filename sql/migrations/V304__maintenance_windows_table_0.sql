CREATE TABLE maintenance_windows (
    window_id SERIAL PRIMARY KEY,
    window_name VARCHAR(255) NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    description TEXT,
    is_public BOOLEAN DEFAULT FALSE, -- whether to notify users
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);