CREATE TABLE low_stock_alerts (
    alert_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    current_stock INT DEFAULT 0,
    threshold INT DEFAULT 0,
    alert_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);