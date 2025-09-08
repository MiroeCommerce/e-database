CREATE TABLE fragile_item_handling (
    fragile_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    item_id BIGSERIAL NOT NULL REFERENCES order_items(order_item_id),
    handling_instructions TEXT NOT NULL,
    requires_special_carrier BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);