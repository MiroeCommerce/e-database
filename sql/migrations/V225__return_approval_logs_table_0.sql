CREATE TABLE return_approval_logs (
    log_id SERIAL PRIMARY KEY,
    return_id INT NOT NULL REFERENCES returns(return_id),
    staff_id INT NOT NULL,
    action VARCHAR(50) NOT NULL,
    comments TEXT,
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);