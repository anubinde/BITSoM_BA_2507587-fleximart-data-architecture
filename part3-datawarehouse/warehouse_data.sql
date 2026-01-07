-- Data for dim_date (Minimum 30 dates: Jan 2024 - Feb 2024)
INSERT INTO dim_date (date_key, full_date, day_of_week, day_of_month, month, month_name, quarter, year, is_weekend) VALUES
(20240120, '2024-01-20', 'Saturday', 20, 1, 'January', 'Q1', 2024, TRUE),
(20240121, '2024-01-21', 'Sunday', 21, 1, 'January', 'Q1', 2024, TRUE),
(20240122, '2024-01-22', 'Monday', 22, 1, 'January', 'Q1', 2024, FALSE),
(20240123, '2024-01-23', 'Tuesday', 23, 1, 'January', 'Q1', 2024, FALSE),
(20240124, '2024-01-24', 'Wednesday', 24, 1, 'January', 'Q1', 2024, FALSE),
(20240125, '2024-01-25', 'Thursday', 25, 1, 'January', 'Q1', 2024, FALSE),
(20240126, '2024-01-26', 'Friday', 26, 1, 'January', 'Q1', 2024, FALSE),
(20240127, '2024-01-27', 'Saturday', 27, 1, 'January', 'Q1', 2024, TRUE),
(20240128, '2024-01-28', 'Sunday', 28, 1, 'January', 'Q1', 2024, TRUE),
(20240129, '2024-01-29', 'Monday', 29, 1, 'January', 'Q1', 2024, FALSE),
(20240130, '2024-01-30', 'Tuesday', 30, 1, 'January', 'Q1', 2024, FALSE),
(20240131, '2024-01-31', 'Wednesday', 31, 1, 'January', 'Q1', 2024, FALSE),
(20240201, '2024-02-01', 'Thursday', 1, 2, 'February', 'Q1', 2024, FALSE),
(20240202, '2024-02-02', 'Friday', 2, 2, 'February', 'Q1', 2024, FALSE),
(20240203, '2024-02-03', 'Saturday', 3, 2, 'February', 'Q1', 2024, TRUE),
(20240204, '2024-02-04', 'Sunday', 4, 2, 'February', 'Q1', 2024, TRUE),
(20240205, '2024-02-05', 'Monday', 5, 2, 'February', 'Q1', 2024, FALSE),
(20240206, '2024-02-06', 'Tuesday', 6, 2, 'February', 'Q1', 2024, FALSE),
(20240207, '2024-02-07', 'Wednesday', 7, 2, 'February', 'Q1', 2024, FALSE),
(20240208, '2024-02-08', 'Thursday', 8, 2, 'February', 'Q1', 2024, FALSE),
(20240209, '2024-02-09', 'Friday', 9, 2, 'February', 'Q1', 2024, FALSE),
(20240210, '2024-02-10', 'Saturday', 10, 2, 'February', 'Q1', 2024, TRUE),
(20240211, '2024-02-11', 'Sunday', 11, 2, 'February', 'Q1', 2024, TRUE),
(20240212, '2024-02-12', 'Monday', 12, 2, 'February', 'Q1', 2024, FALSE),
(20240213, '2024-02-13', 'Tuesday', 13, 2, 'February', 'Q1', 2024, FALSE),
(20240214, '2024-02-14', 'Wednesday', 14, 2, 'February', 'Q1', 2024, FALSE),
(20240215, '2024-02-15', 'Thursday', 15, 2, 'February', 'Q1', 2024, FALSE),
(20240216, '2024-02-16', 'Friday', 16, 2, 'February', 'Q1', 2024, FALSE),
(20240217, '2024-02-17', 'Saturday', 17, 2, 'February', 'Q1', 2024, TRUE),
(20240218, '2024-02-18', 'Sunday', 18, 2, 'February', 'Q1', 2024, TRUE);

-- Data for dim_product (Minimum 15 products across 3 categories)
INSERT INTO dim_product (product_id, product_name, category, subcategory, unit_price) VALUES
('TEC-LAP-001', 'High-End Laptop', 'Technology', 'Computers', 95000.00), -- 1
('TEC-PHN-002', 'Premium Smartphone', 'Technology', 'Phones', 65000.00), -- 2
('TEC-ACC-003', 'Wireless Mouse', 'Technology', 'Accessories', 1200.00), -- 3
('TEC-ACC-004', 'USB Drive 128GB', 'Technology', 'Accessories', 800.00), -- 4
('OFF-STP-005', 'Premium Printer Paper', 'Office Supplies', 'Paper', 550.00), -- 5
('OFF-BIN-006', 'Heavy Duty Binder', 'Office Supplies', 'Storage', 350.00), -- 6
('OFF-PEN-007', 'Gel Pen Set (12)', 'Office Supplies', 'Writing', 150.00), -- 7
('OFF-CLP-008', 'Box of Paper Clips', 'Office Supplies', 'Fasteners', 100.00), -- 8
('FUR-CHR-009', 'Ergonomic Office Chair', 'Furniture', 'Chairs', 15000.00), -- 9
('FUR-TBL-010', 'Large Executive Desk', 'Furniture', 'Tables', 45000.00), -- 10
('FUR-STG-011', 'Three-Shelf Bookcase', 'Furniture', 'Storage', 8500.00), -- 11
('TEC-PHN-012', 'Budget Smartphone', 'Technology', 'Phones', 12000.00), -- 12
('OFF-BIN-013', 'Economy File Folder', 'Office Supplies', 'Storage', 180.00), -- 13
('FUR-CHR-014', 'Basic Plastic Chair', 'Furniture', 'Chairs', 1200.00), -- 14
('TEC-ACC-015', 'External Hard Drive 2TB', 'Technology', 'Accessories', 6000.00); -- 15

-- Data for dim_customer (Minimum 12 customers across 4 cities)
INSERT INTO dim_customer (customer_id, customer_name, city, state, customer_segment) VALUES
('CUS-001', 'Alia Sharma', 'Mumbai', 'Maharashtra', 'Consumer'), -- 1
('CUS-002', 'Rajan Kapoor', 'Delhi', 'Delhi', 'Corporate'), -- 2
('CUS-003', 'Priya Menon', 'Bangalore', 'Karnataka', 'Home Office'), -- 3
('CUS-004', 'Vijay Singh', 'Chennai', 'Tamil Nadu', 'Consumer'), -- 4
('CUS-005', 'Meera Patel', 'Mumbai', 'Maharashtra', 'Corporate'), -- 5
('CUS-006', 'Harish Reddy', 'Hyderabad', 'Telangana', 'Small Business'), -- 6
('CUS-007', 'Sara Khan', 'Delhi', 'Delhi', 'Home Office'), -- 7
('CUS-008', 'Karthik Iyer', 'Bangalore', 'Karnataka', 'Consumer'), -- 8
('CUS-009', 'Nisha Verma', 'Kolkata', 'West Bengal', 'Corporate'), -- 9
('CUS-010', 'Rohit Jain', 'Chennai', 'Tamil Nadu', 'Small Business'), -- 10
('CUS-011', 'Deepa Gupte', 'Pune', 'Maharashtra', 'Consumer'), -- 11
('CUS-012', 'Anil Das', 'Lucknow', 'Uttar Pradesh', 'Corporate'); -- 12

-- Data for fact_sales (Minimum 40 transactions)
-- Sales should show realistic patterns (higher on weekends)

INSERT INTO fact_sales (date_key, product_key, customer_key, quantity_sold, unit_price, discount_amount, total_amount) VALUES
-- Weekend Sales (Higher Volume/Price, e.g., 20240120 - Sat)
(20240120, 1, 2, 1, 95000.00, 4750.00, 90250.00), -- High-End Laptop (Corp)
(20240120, 9, 3, 2, 15000.00, 0.00, 30000.00), -- Ergonomic Chairs (Home Office)
(20240121, 2, 1, 1, 65000.00, 3250.00, 61750.00), -- Premium Smartphone (Consumer)
(20240127, 10, 5, 1, 45000.00, 0.00, 45000.00), -- Executive Desk (Corp)
(20240127, 4, 8, 5, 800.00, 0.00, 4000.00), -- USB Drives (Consumer)
(20240128, 12, 4, 1, 12000.00, 0.00, 12000.00), -- Budget Smartphone (Consumer)
(20240203, 7, 11, 10, 150.00, 0.00, 1500.00), -- Gel Pen Set (Consumer)
(20240204, 1, 9, 1, 95000.00, 5000.00, 90000.00), -- High-End Laptop (Corp)
(20240210, 15, 6, 2, 6000.00, 0.00, 12000.00), -- External Hard Drive (Small Business)
(20240211, 3, 7, 3, 1200.00, 0.00, 3600.00), -- Wireless Mouse (Home Office)
(20240217, 5, 10, 10, 550.00, 550.00, 4950.00), -- Printer Paper (Small Business)
(20240218, 14, 12, 15, 1200.00, 0.00, 18000.00), -- Basic Plastic Chair (Corp)

-- Weekday Sales (Varied prices/quantities)
(20240122, 13, 1, 20, 180.00, 0.00, 3600.00), -- File Folders (Consumer)
(20240123, 6, 2, 5, 350.00, 0.00, 1750.00), -- Heavy Duty Binder (Corp)
(20240123, 7, 2, 8, 150.00, 0.00, 1200.00), -- Gel Pen Set (Corp)
(20240124, 8, 3, 50, 100.00, 0.00, 5000.00), -- Paper Clips (Home Office)
(20240125, 11, 4, 1, 8500.00, 0.00, 8500.00), -- Bookcase (Consumer)
(20240126, 3, 5, 2, 1200.00, 0.00, 2400.00), -- Wireless Mouse (Corp)
(20240129, 4, 6, 3, 800.00, 0.00, 2400.00), -- USB Drive (Small Business)
(20240130, 5, 7, 5, 550.00, 0.00, 2750.00), -- Printer Paper (Home Office)
(20240131, 10, 8, 1, 45000.00, 2250.00, 42750.00), -- Executive Desk (Consumer)
(20240201, 1, 9, 1, 95000.00, 0.00, 95000.00), -- High-End Laptop (Corp)
(20240202, 12, 10, 2, 12000.00, 0.00, 24000.00), -- Budget Smartphone (Small Business)
(20240205, 14, 11, 5, 1200.00, 0.00, 6000.00), -- Basic Plastic Chair (Consumer)
(20240206, 13, 12, 10, 180.00, 0.00, 1800.00), -- File Folders (Corp)
(20240207, 6, 1, 15, 350.00, 0.00, 5250.00), -- Heavy Duty Binder (Consumer)
(20240207, 8, 1, 30, 100.00, 0.00, 3000.00), -- Paper Clips (Consumer)
(20240208, 2, 3, 1, 65000.00, 0.00, 65000.00), -- Premium Smartphone (Home Office)
(20240209, 11, 4, 1, 8500.00, 0.00, 8500.00), -- Bookcase (Consumer)
(20240212, 7, 5, 5, 150.00, 0.00, 750.00), -- Gel Pen Set (Corp)
(20240213, 5, 6, 8, 550.00, 0.00, 4400.00), -- Printer Paper (Small Business)
(20240214, 4, 7, 2, 800.00, 0.00, 1600.00), -- USB Drive (Home Office)
(20240214, 8, 7, 10, 100.00, 0.00, 1000.00), -- Paper Clips (Home Office)
(20240215, 9, 8, 1, 15000.00, 0.00, 15000.00), -- Ergonomic Chair (Consumer)
(20240216, 10, 10, 1, 45000.00, 0.00, 45000.00), -- Executive Desk (Small Business)
(20240216, 3, 11, 2, 1200.00, 0.00, 2400.00), -- Wireless Mouse (Consumer)
(20240216, 6, 11, 3, 350.00, 0.00, 1050.00), -- Heavy Duty Binder (Consumer)
(20240216, 15, 12, 1, 6000.00, 0.00, 6000.00), -- External Hard Drive (Corp)
(20240216, 13, 12, 5, 180.00, 0.00, 900.00); -- File Folders (Corp)