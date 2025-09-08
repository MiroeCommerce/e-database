CREATE TABLE cms_sliders (
    slider_id SERIAL PRIMARY KEY,
    slider_name VARCHAR(255) NOT NULL,
    slider_type VARCHAR(50), -- e.g., image, banner, product
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);