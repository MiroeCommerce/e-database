CREATE TABLE cms_ab_test_variants (
    variant_id SERIAL PRIMARY KEY,
    test_name VARCHAR(255) NOT NULL,
    content_type VARCHAR(50) NOT NULL, -- e.g., page, block
    content_id INT NOT NULL, -- ID of the content being tested
    variant_name VARCHAR(255) NOT NULL,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);