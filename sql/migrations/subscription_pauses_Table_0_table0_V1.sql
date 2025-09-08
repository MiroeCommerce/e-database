CREATE TABLE subscription_pauses (
    pause_id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL, -- references subscriptions
    pause_start DATE NOT NULL,
    pause_end DATE,
    reason TEXT,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);