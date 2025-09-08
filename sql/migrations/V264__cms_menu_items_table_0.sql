CREATE TABLE cms_menu_items (
    menu_item_id SERIAL PRIMARY KEY,
    menu_id INT NOT NULL, -- references cms_menus
    title VARCHAR(255) NOT NULL,
    link_type VARCHAR(50) NOT NULL, -- e.g., page, product, custom
    link_target VARCHAR(500), -- URL or reference ID
    parent_item_id INT, -- for nested menus
    position INT DEFAULT 0, -- order within menu
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);