CREATE TABLE user_profiles (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_id UUID NOT NULL UNIQUE,
    bio TEXT,
    profile_picture TEXT,

    preferences JSONB,
    interests TEXT[],

    website VARCHAR(255),
    facebook_link VARCHAR(255),
    twitter_link VARCHAR(255),
    linkedin_link VARCHAR(255),

    language VARCHAR(10),
    timezone VARCHAR(50),

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Foreign Key: One-to-One relationship with users
ALTER TABLE user_profiles
ADD CONSTRAINT fk_user_profiles_user
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;