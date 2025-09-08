CREATE TABLE admin_logs (
    log_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    admin_user_id UUID NOT NULL,
    action TEXT NOT NULL,
    target_user_id UUID,
    target_resource TEXT,
    details JSONB,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT fk_admin FOREIGN KEY (admin_user_id) REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_target_user FOREIGN KEY (target_user_id) REFERENCES users(id) ON DELETE SET NULL
);