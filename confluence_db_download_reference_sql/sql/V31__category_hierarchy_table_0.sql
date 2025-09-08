CREATE TABLE category_hierarchy (
    parent_id UUID NOT NULL REFERENCES product_categories(category_id) ON DELETE CASCADE,
    child_id UUID NOT NULL REFERENCES product_categories(category_id) ON DELETE CASCADE,
    depth INTEGER DEFAULT 1,
    sort_order INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT category_hierarchy_pk PRIMARY KEY (parent_id, child_id),
    CONSTRAINT no_self_reference CHECK (parent_id <> child_id)
);