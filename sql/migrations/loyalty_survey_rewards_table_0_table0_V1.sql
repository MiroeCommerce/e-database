CREATE TABLE loyalty_survey_rewards (
    id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES loyalty_members(id) ON DELETE CASCADE,
    survey_id INTEGER,
    points_awarded INTEGER NOT NULL,
    completion_date TIMESTAMP NOT NULL DEFAULT NOW(),
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);