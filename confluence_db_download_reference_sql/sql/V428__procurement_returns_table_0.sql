CREATE TABLE procurement_returns (
    return_id BIGSERIAL PRIMARY KEY,
    order_id BIGINT NOT NULL,
    supplier_id BIGINT NOT NULL,
    return_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    return_reason TEXT,
    status VARCHAR(50),
    notes TEXT
);