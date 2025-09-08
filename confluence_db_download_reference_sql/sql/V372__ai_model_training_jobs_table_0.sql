CREATE TABLE ai_model_training_jobs (
    job_id BIGSERIAL PRIMARY KEY,
    model_id BIGINT NOT NULL,
    dataset_id BIGINT,
    status VARCHAR(50) NOT NULL,
    started_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    completed_at TIMESTAMP,
    metrics JSONB,
    notes TEXT
);