CREATE TABLE support_ticket_messages (
    message_id SERIAL PRIMARY KEY,
    ticket_id INT NOT NULL REFERENCES customer_support_tickets(ticket_id) ON DELETE CASCADE,
    sender_type VARCHAR(20) NOT NULL, -- 'customer' or 'agent'
    sender_id INT,
    message_text TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);