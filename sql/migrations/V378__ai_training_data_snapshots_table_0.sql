CREATE TABLE ai_training_data_snapshots (
    snapshot_id BIGSERIAL PRIMARY KEY,
    dataset_name VARCHAR(255) NOT NULL,
    snapshot_data JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);