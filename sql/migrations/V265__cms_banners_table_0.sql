CREATE TABLE cms_banners (
    banner_id SERIAL PRIMARY KEY,
    banner_name VARCHAR(255) NOT NULL,
    banner_type VARCHAR(50), -- e.g., marketing, UI
    content TEXT,
    banner_position_id INT, -- references cms_banner_positions
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);