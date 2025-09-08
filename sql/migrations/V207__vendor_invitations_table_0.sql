CREATE TABLE vendor_invitations (
    invitation_id SERIAL PRIMARY KEY,
    vendor_email VARCHAR(255) NOT NULL,
    invitation_code VARCHAR(100) NOT NULL,
    invite_status VARCHAR(50) DEFAULT 'pending',
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    responded_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);