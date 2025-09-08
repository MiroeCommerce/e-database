CREATE TABLE cms_files (
    file_id SERIAL PRIMARY KEY,
    file_name VARCHAR(255) NOT NULL,
    file_type VARCHAR(50) NOT NULL, -- e.g., image, pdf, video
    file_path VARCHAR(500) NOT NULL, -- storage location or URL
    file_size INT, -- size in bytes
    uploaded_by INT NOT NULL,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);