CREATE TABLE cms_menus (
    menu_id SERIAL PRIMARY KEY,
    menu_name VARCHAR(255) NOT NULL,
    menu_type VARCHAR(50) NOT NULL, -- e.g., header, footer, sidebar
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);