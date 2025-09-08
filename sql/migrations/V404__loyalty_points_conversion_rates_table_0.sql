CREATE TABLE loyalty_points_conversion_rates (
    id SERIAL PRIMARY KEY,
    program_id INTEGER NOT NULL REFERENCES loyalty_programs(id) ON DELETE CASCADE,
    points INTEGER NOT NULL,
    currency_amount NUMERIC(12,2) NOT NULL,
    effective_date DATE NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);