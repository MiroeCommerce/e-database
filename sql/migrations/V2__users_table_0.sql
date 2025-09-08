CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    email VARCHAR(255) NOT NULL UNIQUE,
    username VARCHAR(150),
    password_hash TEXT NOT NULL,

    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone_number VARCHAR(20),
    date_of_birth DATE,
    gender VARCHAR(10),

    profile_picture TEXT,
    user_type VARCHAR(50) NOT NULL, -- e.g., 'customer', 'admin', 'vendor'
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    is_email_verified BOOLEAN NOT NULL DEFAULT FALSE,

    last_login_at TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE,

    auth_provider VARCHAR(50), -- e.g., 'local', 'google', 'facebook'
    role_id UUID, -- FK to roles table
    timezone VARCHAR(50),
    language VARCHAR(10)
);

-- Indexes
CREATE INDEX idx_users_user_type ON users(user_type);
CREATE INDEX idx_users_created_at ON users(created_at);
CREATE INDEX idx_users_role_id ON users(role_id);

-- Foreign Key
ALTER TABLE users
ADD CONSTRAINT fk_users_role
FOREIGN KEY (role_id)
REFERENCES user_roles(role_id)
ON DELETE SET NULL;