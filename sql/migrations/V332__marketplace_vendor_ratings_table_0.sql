CREATE TABLE marketplace_vendor_ratings (
    rating_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,
    customer_id BIGINT,
    rating NUMERIC NOT NULL,
    review TEXT,
    rating_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);