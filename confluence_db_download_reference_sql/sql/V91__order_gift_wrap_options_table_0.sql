CREATE TABLE order_gift_wrap_options (
    gift_wrap_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    option_name VARCHAR(100) NOT NULL,
    price NUMERIC(12,2) NOT NULL CHECK (price >= 0),
    message TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_gift_wrap_options_order
        FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE INDEX idx_order_gift_wrap_options_order_id ON order_gift_wrap_options(order_id);
CREATE INDEX idx_order_gift_wrap_options_option_name ON order_gift_wrap_options(option_name);