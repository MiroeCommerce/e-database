CREATE TABLE hazardous_materials (
    hazardous_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    item_id BIGSERIAL NOT NULL REFERENCES order_items(order_item_id),
    material_type VARCHAR(100) NOT NULL,
    handling_instructions TEXT NOT NULL,
    compliance_code VARCHAR(50),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);