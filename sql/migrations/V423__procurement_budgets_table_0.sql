CREATE TABLE procurement_budgets (
    budget_id BIGSERIAL PRIMARY KEY,
    fiscal_year INT NOT NULL,
    total_budget NUMERIC NOT NULL,
    spent_amount NUMERIC DEFAULT 0,
    remaining_amount NUMERIC,
    status VARCHAR(50),
    notes TEXT
);