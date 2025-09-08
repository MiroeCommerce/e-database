CREATE TABLE product_forecast_reports (
    report_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    forecast_period VARCHAR(50) NOT NULL, -- e.g., weekly, monthly, quarterly
    forecast_quantity INT NOT NULL,
    forecast_date DATE NOT NULL,
    actual_sales INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);