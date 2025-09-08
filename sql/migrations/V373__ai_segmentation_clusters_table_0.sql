CREATE TABLE ai_segmentation_clusters (
    cluster_id BIGSERIAL PRIMARY KEY,
    segment_name VARCHAR(255),
    user_ids JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);