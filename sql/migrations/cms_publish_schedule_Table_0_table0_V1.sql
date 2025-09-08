CREATE TABLE cms_publish_schedule (
    schedule_id SERIAL PRIMARY KEY,
    content_type VARCHAR(50) NOT NULL, -- e.g., page, block, banner
    content_id INT NOT NULL, -- ID of the content to be published
    publish_start TIMESTAMP NOT NULL,
    publish_end TIMESTAMP,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);