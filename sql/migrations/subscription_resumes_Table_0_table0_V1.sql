CREATE TABLE subscription_resumes (
    resume_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    resume_date DATE NOT NULL,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);