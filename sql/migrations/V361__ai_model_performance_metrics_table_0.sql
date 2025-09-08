CREATE TABLE ai_model_performance_metrics (
    metric_id BIGSERIAL PRIMARY KEY,
    model_id BIGINT NOT NULL,
    metric_name VARCHAR(100) NOT NULL,
    metric_value NUMERIC,
    evaluated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);