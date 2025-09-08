CREATE TABLE cms_slider_items (
    slider_item_id SERIAL PRIMARY KEY,
    slider_id INT NOT NULL, -- references cms_sliders
    content_type VARCHAR(50) NOT NULL, -- e.g., banner, image, page
    content_id INT NOT NULL, -- ID of the linked content
    position INT DEFAULT 0, -- order within the slider
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);