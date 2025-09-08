CREATE TABLE scheduled_tasks (
    task_id SERIAL PRIMARY KEY,
    task_name VARCHAR(255) NOT NULL,
    cron_expression VARCHAR(100) NOT NULL, -- e.g., '0 0 * * *'
    task_type VARCHAR(100), -- e.g., cleanup, report_generation
    is_active BOOLEAN DEFAULT TRUE,
    last_run_at TIMESTAMP,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);