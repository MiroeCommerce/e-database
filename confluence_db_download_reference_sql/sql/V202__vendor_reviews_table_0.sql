CREATE TABLE vendor_reviews (
    review_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL REFERENCES vendors(vendor_id),
    reviewer_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comments TEXT,
    review_date DATE DEFAULT CURRENT_DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);