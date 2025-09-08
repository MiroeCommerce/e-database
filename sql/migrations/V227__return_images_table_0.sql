CREATE TABLE return_images (
    image_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    image_file_path VARCHAR(255) NOT NULL,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);