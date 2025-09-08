CREATE TABLE customer_consent_logs (
    consent_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    consent_type VARCHAR(50) NOT NULL, -- e.g., 'marketing', 'data_processing'
    consent_status BOOLEAN DEFAULT TRUE,
    consent_given_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    consent_revoked_at TIMESTAMP
);