CREATE TABLE service_accounts (
    service_account_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    last_used_at TIMESTAMPTZ,
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);