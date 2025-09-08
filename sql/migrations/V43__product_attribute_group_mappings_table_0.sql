CREATE TABLE product_attribute_group_mappings (
    attribute_id UUID NOT NULL REFERENCES product_attributes(attribute_id) ON DELETE CASCADE,
    attribute_group_id INTEGER NOT NULL REFERENCES product_attributes_groups(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    PRIMARY KEY (attribute_id, attribute_group_id)
);

-- Optional indexes for fast lookup
CREATE INDEX idx_attr_group_map_attribute_id ON product_attribute_group_mappings(attribute_id);
CREATE INDEX idx_attr_group_map_group_id ON product_attribute_group_mappings(attribute_group_id);