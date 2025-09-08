CREATE TABLE rma_labels (
    label_id SERIAL PRIMARY KEY,
    rma_id INT NOT NULL REFERENCES rma_requests(rma_id),
    label_file_path VARCHAR(255) NOT NULL,
    generated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'generated',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);