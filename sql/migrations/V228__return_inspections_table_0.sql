CREATE TABLE return_inspections (
    inspection_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    inspector_id INT NOT NULL,
    inspection_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    findings TEXT,
    status VARCHAR(50) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);