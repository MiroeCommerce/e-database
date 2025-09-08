CREATE TABLE subscription_statuses (
    status_id SERIAL PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL, -- e.g., Active, Paused, Canceled, Expired, Trial
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);