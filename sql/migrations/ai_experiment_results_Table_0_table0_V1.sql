CREATE TABLE ai_experiment_results (
    experiment_id BIGSERIAL PRIMARY KEY,
    experiment_name VARCHAR(255) NOT NULL,
    variant_id BIGINT,
    metric_name VARCHAR(100),
    metric_value NUMERIC,
    evaluated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);