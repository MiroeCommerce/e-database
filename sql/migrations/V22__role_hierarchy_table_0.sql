CREATE TABLE role_hierarchy (
    parent_role_id UUID NOT NULL,
    child_role_id UUID NOT NULL,
    assigned_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (parent_role_id, child_role_id),
    CONSTRAINT fk_parent_role FOREIGN KEY (parent_role_id) REFERENCES user_roles(role_id) ON DELETE CASCADE,
    CONSTRAINT fk_child_role FOREIGN KEY (child_role_id) REFERENCES user_roles(role_id) ON DELETE CASCADE,
    CONSTRAINT chk_no_self_reference CHECK (parent_role_id <> child_role_id)
);