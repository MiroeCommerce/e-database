CREATE TABLE accounting_exports (
    export_id     BIGSERIAL PRIMARY KEY,
    period_id     BIGINT NOT NULL REFERENCES financial_periods(period_id),
    system_name   VARCHAR(50) NOT NULL, -- QuickBooks, Xero, etc.
    export_file   TEXT,
    status        VARCHAR(50) NOT NULL, -- pending, completed, failed
    exported_at   TIMESTAMP,
    created_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);