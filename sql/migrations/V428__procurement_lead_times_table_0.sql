CREATE TABLE procurement_lead_times (
    lead_time_id BIGSERIAL PRIMARY KEY,
    supplier_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    average_lead_time_days INT,
    notes TEXT
);