CREATE TABLE customer_support_tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE,
    subject VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'open', -- e.g., 'open', 'in_progress', 'closed'
    priority VARCHAR(20) DEFAULT 'normal', -- e.g., 'low', 'normal', 'high'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    closed_at TIMESTAMP
);