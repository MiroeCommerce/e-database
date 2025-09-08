CREATE TABLE oauth_clients (
    client_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    client_name TEXT NOT NULL,
    client_secret TEXT NOT NULL,
    redirect_uris TEXT[] NOT NULL,
    scopes TEXT[],
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ
);