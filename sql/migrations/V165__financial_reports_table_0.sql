CREATE TABLE financial_reports (
    report_id   BIGSERIAL PRIMARY KEY,
    period_id   BIGINT NOT NULL REFERENCES financial_periods(period_id),
    report_type VARCHAR(50) NOT NULL, -- sales, revenue, refunds, etc.
    data        JSONB NOT NULL,
    generated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);