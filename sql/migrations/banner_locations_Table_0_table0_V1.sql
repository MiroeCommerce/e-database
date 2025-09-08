CREATE TABLE banner_locations (
    location_id BIGSERIAL PRIMARY KEY,
    location_name VARCHAR(255) NOT NULL, -- e.g., homepage_top, sidebar, checkout
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);