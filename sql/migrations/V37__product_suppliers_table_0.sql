CREATE TABLE product_suppliers (
    product_id UUID NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
    supplier_id INTEGER NOT NULL REFERENCES suppliers(id) ON DELETE CASCADE,
    primary_supplier BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    PRIMARY KEY (product_id, supplier_id)
);

CREATE INDEX idx_product_suppliers_product_id ON product_suppliers(product_id);
CREATE INDEX idx_product_suppliers_supplier_id ON product_suppliers(supplier_id);
