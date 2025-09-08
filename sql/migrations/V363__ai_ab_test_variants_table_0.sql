CREATE TABLE ai_ab_test_variants (
    variant_id BIGSERIAL PRIMARY KEY,
    experiment_name VARCHAR(255) NOT NULL,
    algorithm_variant VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);