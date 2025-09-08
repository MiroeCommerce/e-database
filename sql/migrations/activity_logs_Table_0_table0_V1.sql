CREATE TABLE activity_logs (
    activity_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL, -- user performing the activity
    activity_type VARCHAR(100) NOT NULL, -- e.g., page_view, action_performed
    entity_type VARCHAR(50), -- e.g., page, order, product
    entity_id INT, -- optional reference to affected entity
    activity_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    details TEXT -- optional extra info
);