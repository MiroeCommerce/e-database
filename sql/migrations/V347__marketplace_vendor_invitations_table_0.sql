CREATE TABLE marketplace_vendor_invitations (
    invitation_id BIGSERIAL PRIMARY KEY,
    vendor_email VARCHAR(255) NOT NULL,
    invited_by VARCHAR(255),
    invitation_status VARCHAR(50),
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    responded_at TIMESTAMP,
    notes TEXT
);