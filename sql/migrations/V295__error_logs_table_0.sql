CREATE TABLE error_logs (
    error_id SERIAL PRIMARY KEY,
    error_type VARCHAR(100) NOT NULL, -- e.g., RuntimeException, DatabaseError
    message TEXT NOT NULL,
    stack_trace TEXT,
    service_name VARCHAR(100), -- optional, which service logged the error
    occurred_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by INT -- optional, user/admin causing the error
);