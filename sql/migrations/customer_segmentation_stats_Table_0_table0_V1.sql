CREATE TABLE customer_segmentation_stats (
    segment_id SERIAL PRIMARY KEY,
    segment_name VARCHAR(100) NOT NULL,
    customer_count INT DEFAULT 0,
    total_revenue NUMERIC(12,2) DEFAULT 0,
    avg_order_value NUMERIC(12,2),
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);