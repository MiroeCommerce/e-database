CREATE TABLE return_policies (
    policy_id SERIAL PRIMARY KEY,
    product_id INT,
    category_id INT,
    vendor_id INT,
    policy_name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);