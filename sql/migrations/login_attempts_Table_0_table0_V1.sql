CREATE TABLE login_attempts (
    attempt_id SERIAL PRIMARY KEY,
    user_id INT, -- optional, if known
    username VARCHAR(255), -- attempted username
    success BOOLEAN NOT NULL,
    ip_address VARCHAR(45), -- IPv4 or IPv6
    user_agent TEXT, -- browser or client info
    attempt_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);