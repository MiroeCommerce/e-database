CREATE TABLE cms_event_logs (
    event_id SERIAL PRIMARY KEY,
    event_type VARCHAR(100) NOT NULL, -- e.g., edit, publish, delete
    content_type VARCHAR(50) NOT NULL, -- e.g., page, block, banner
    content_id INT NOT NULL, -- ID of the affected content
    user_id INT NOT NULL, -- who performed the action
    event_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    details TEXT -- optional extra info about the event
);