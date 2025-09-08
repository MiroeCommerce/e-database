CREATE TABLE system_timezones (
    timezone_id SERIAL PRIMARY KEY,
    timezone_name VARCHAR(255) NOT NULL UNIQUE, -- e.g., 'America/New_York'
    utc_offset INTERVAL NOT NULL,
    is_default BOOLEAN DEFAULT FALSE,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);