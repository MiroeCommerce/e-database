CREATE TABLE supplier_ratings (
    rating_id BIGSERIAL PRIMARY KEY,
    supplier_id BIGINT NOT NULL,
    rating_value NUMERIC,
    rating_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    feedback TEXT,
    rated_by BIGINT,
    notes TEXT
);