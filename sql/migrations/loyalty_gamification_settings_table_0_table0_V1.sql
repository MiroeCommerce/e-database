CREATE TABLE loyalty_gamification_settings (
    id SERIAL PRIMARY KEY,
    program_id INTEGER NOT NULL REFERENCES loyalty_programs(id) ON DELETE CASCADE,
    leaderboard_enabled BOOLEAN DEFAULT TRUE,
    levels_enabled BOOLEAN DEFAULT TRUE,
    xp_per_point NUMERIC(10,2) DEFAULT 1.0,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);