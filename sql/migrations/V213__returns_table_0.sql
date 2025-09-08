CREATE TABLE returns (
    return_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    rma_id INT,
    return_date DATE DEFAULT CURRENT_DATE,
    status_id INT,
    reason_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);