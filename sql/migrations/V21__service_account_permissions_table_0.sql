CREATE TABLE service_account_permissions (
    service_account_id UUID NOT NULL,
    permission_id UUID NOT NULL,
    granted_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (service_account_id, permission_id),
    CONSTRAINT fk_service_account FOREIGN KEY (service_account_id) REFERENCES service_accounts(service_account_id) ON DELETE CASCADE,
    CONSTRAINT fk_permission FOREIGN KEY (permission_id) REFERENCES permissions(permission_id) ON DELETE CASCADE
);