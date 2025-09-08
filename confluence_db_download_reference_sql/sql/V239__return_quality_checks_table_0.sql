CREATE TABLE return_quality_checks (
    qc_id SERIAL PRIMARY KEY,
    inspection_id INT NOT NULL REFERENCES return_inspections(inspection_id),
    qc_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    qc_result VARCHAR(50),
    remarks TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);