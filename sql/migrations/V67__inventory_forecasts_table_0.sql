CREATE TABLE inventory_forecasts (
    id BIGSERIAL PRIMARY KEY,
    product_id UUID NOT NULL,
    variant_id UUID,
    forecast_date DATE NOT NULL,
    predicted_quantity INTEGER NOT NULL CHECK (predicted_quantity >= 0),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (variant_id) REFERENCES product_variants(variant_id)
);