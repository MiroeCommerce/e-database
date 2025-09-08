CREATE TABLE marketplace_vendor_support_tickets (
    ticket_id BIGSERIAL PRIMARY KEY,
    vendor_id BIGINT NOT NULL,

    subject VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);