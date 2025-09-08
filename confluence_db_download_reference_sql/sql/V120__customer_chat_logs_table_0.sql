CREATE TABLE customer_chat_logs (
    chat_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    agent_id INT,
    message TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    chat_channel VARCHAR(50) -- e.g., 'web', 'mobile', 'messenger'
);