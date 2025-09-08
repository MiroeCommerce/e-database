CREATE TABLE group_memberships (
    user_id UUID NOT NULL,
    group_id UUID NOT NULL,
    joined_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, group_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_group FOREIGN KEY (group_id) REFERENCES user_groups(group_id) ON DELETE CASCADE
);