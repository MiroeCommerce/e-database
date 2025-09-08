CREATE TABLE oauth_refresh_tokens (
    refresh_token TEXT PRIMARY KEY,
    access_token TEXT NOT NULL,
    client_id UUID NOT NULL,
    user_id UUID,
    issued_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    expires_at TIMESTAMPTZ NOT NULL,
    revoked_at TIMESTAMPTZ,
    CONSTRAINT fk_access_token FOREIGN KEY (access_token) REFERENCES oauth_access_tokens(access_token) ON DELETE CASCADE,
    CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES oauth_clients(client_id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);