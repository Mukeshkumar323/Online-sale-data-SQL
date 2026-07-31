REATE DATABASE sales_db;
USE sales_db;
CREATE TABLE online_sales  (
    order_id INT PRIMARY KEY,
    order_date DATE,
    product_id INT,
    amount DECIMAL(10,2)
);
INSERT INTO online_sales (order_id, order_date, product_id, amount) VALUES
(1001,'2024-01-05',101,1200.50),
(1002,'2024-01-10',102,850.00),
(1003,'2024-01-15',103,1500.75),
(1004,'2024-02-02',101,950.00),
(1005,'2024-02-12',104,2200.00),
(1006,'2024-02-18',105,780.50),
(1007,'2024-03-05',102,1340.00),
(1008,'2024-03-15',103,2750.00),
(1009,'2024-03-25',101,1999.99),
(1010,'2024-04-01',104,1800.00);
SELECT * FROM online_sales;