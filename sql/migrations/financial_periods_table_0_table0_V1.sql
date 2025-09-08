CREATE TABLE financial_periods (
    period_id   BIGSERIAL PRIMARY KEY,
    name        VARCHAR(50) NOT NULL,
    start_date  DATE NOT NULL,
    end_date    DATE NOT NULL,
    period_type VARCHAR(20) NOT NULL, -- month, quarter, year
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);