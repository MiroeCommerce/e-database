CREATE TABLE scheduled_task_logs (
    log_id SERIAL PRIMARY KEY,
    task_id INT NOT NULL, -- references scheduled_tasks
    status VARCHAR(50) DEFAULT 'Pending', -- Pending, Success, Failed
    started_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    finished_at TIMESTAMP,
    details TEXT,
    created_by INT
);