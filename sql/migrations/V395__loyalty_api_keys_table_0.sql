CREATE TABLE loyalty_api_keys (
    id SERIAL PRIMARY KEY,
    program_id INTEGER NOT NULL REFERENCES loyalty_programs(id) ON DELETE CASCADE,
    api_key VARCHAR(255) NOT NULL UNIQUE,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);