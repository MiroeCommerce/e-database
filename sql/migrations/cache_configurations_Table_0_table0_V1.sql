CREATE TABLE cache_configurations (
    cache_id SERIAL PRIMARY KEY,
    cache_name VARCHAR(255) NOT NULL UNIQUE,
    cache_type VARCHAR(50) NOT NULL, -- e.g., Redis, Memory
    max_size INT,
    ttl_seconds INT, -- time-to-live in seconds
    is_enabled BOOLEAN DEFAULT TRUE,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);