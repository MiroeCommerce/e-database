CREATE TABLE cms_banner_positions (
    position_id SERIAL PRIMARY KEY,
    position_name VARCHAR(255) NOT NULL, -- e.g., homepage_top, footer_left
    description TEXT,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);