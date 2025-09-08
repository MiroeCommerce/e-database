CREATE TABLE marketplace_vendor_documents (
    document_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    document_type VARCHAR(100),
    document_name VARCHAR(255),
    file_path VARCHAR(500),
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);