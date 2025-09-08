CREATE TABLE rfm_scores (
    score_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    recency_score INT,
    frequency_score INT,
    monetary_score NUMERIC(12,2),
    overall_score NUMERIC(5,2),
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);