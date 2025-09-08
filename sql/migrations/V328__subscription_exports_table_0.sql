CREATE TABLE subscription_exports (
    export_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    export_type VARCHAR(50), -- e.g., GDPR, CSV, JSON
    export_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    file_path VARCHAR(500),
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Completed, Failed
    requested_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);