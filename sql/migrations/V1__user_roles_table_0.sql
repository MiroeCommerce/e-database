CREATE TABLE user_roles (
    role_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    role_name TEXT NOT NULL UNIQUE,
    description TEXT,
    is_system_defined BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);