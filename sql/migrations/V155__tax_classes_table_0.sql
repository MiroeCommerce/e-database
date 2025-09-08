CREATE TABLE tax_classes (
    tax_class_id BIGSERIAL PRIMARY KEY,
    name         VARCHAR(100) NOT NULL,
    description  TEXT,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);