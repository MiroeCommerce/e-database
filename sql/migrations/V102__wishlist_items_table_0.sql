CREATE TABLE wishlist_items (
    item_id SERIAL PRIMARY KEY,
    wishlist_id INT NOT NULL REFERENCES customer_wishlists(wishlist_id) ON DELETE CASCADE,
    product_id INT NOT NULL,
    product_variant_id INT,
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);