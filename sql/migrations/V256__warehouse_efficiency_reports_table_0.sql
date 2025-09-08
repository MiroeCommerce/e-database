CREATE TABLE warehouse_efficiency_reports (
    report_id SERIAL PRIMARY KEY,
    warehouse_id INT,
    staff_id INT,
    pick_count INT DEFAULT 0,
    pack_count INT DEFAULT 0,
    ship_count INT DEFAULT 0,
    report_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);