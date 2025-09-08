CREATE TABLE role_permissions (
    role_id UUID NOT NULL,
    permission_id UUID NOT NULL,
    granted_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    granted_by UUID,
    description TEXT,
    PRIMARY KEY (role_id, permission_id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES user_roles(role_id) ON DELETE CASCADE,
    CONSTRAINT fk_permission FOREIGN KEY (permission_id) REFERENCES permissions(permission_id) ON DELETE CASCADE,
    CONSTRAINT fk_granted_by FOREIGN KEY (granted_by) REFERENCES users(id)
);