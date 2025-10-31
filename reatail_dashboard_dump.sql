CREATE DATABASE retail_dashboard;
USE retail_dashboard;

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
  `Row ID` INT,
  `Order ID` VARCHAR(30),
  `Order Date` VARCHAR(10),
  `Ship Date` VARCHAR(10),
  `Ship Mode` VARCHAR(50),
  `Customer ID` VARCHAR(30),
  `Customer Name` VARCHAR(100),
  `Segment` VARCHAR(50),
  `Country` VARCHAR(50),
  `City` VARCHAR(100),
  `State` VARCHAR(100),
  `Postal Code` VARCHAR(20),
  `Region` VARCHAR(50),
  `Product ID` VARCHAR(50),
  `Category` VARCHAR(50),
  `Sub-Category` VARCHAR(50),
  `Product Name` VARCHAR(255),
  `Sales` DECIMAL(10,2),
  `Quantity` INT,
  `Discount` DECIMAL(5,2),
  `Profit` DECIMAL(10,2)
);

SHOW TABLES;
DESCRIBE sales;


SET GLOBAL local_infile = 1;


SELECT COUNT(*) FROM retail_dashboard.sales;

SELECT * FROM retail_dashboard.sales LIMIT 5;

CREATE OR REPLACE VIEW kpi_region_category AS
SELECT
  Region,
  Category,
  SUM(Sales)  AS Total_Sales,
  SUM(Profit) AS Total_Profit,
  ROUND(SUM(Profit) / NULLIF(SUM(Sales),0), 4) AS Profit_Margin
FROM sales
GROUP BY Region, Category;

SELECT * FROM kpi_region_category LIMIT 10;

CREATE OR REPLACE VIEW kpi_monthly_sales AS
SELECT
  `Order Date` AS Month_Start,  -- first day of each month
  SUM(Sales)  AS Monthly_Sales,
  SUM(Profit) AS Monthly_Profit,
  COUNT(DISTINCT `Order ID`) AS Orders_Count
FROM sales
GROUP BY `Order Date`
ORDER BY Month_Start;



SELECT * FROM kpi_monthly_sales LIMIT 12;


CREATE OR REPLACE VIEW customer_order_stats AS
SELECT
  `Customer ID`,
  COUNT(DISTINCT `Order ID`) AS `Total Orders`
FROM sales
GROUP BY `Customer ID`;

SELECT * FROM customer_order_stats LIMIT 10;

CREATE OR REPLACE VIEW customer_repeat_flag AS
SELECT
  `Customer ID`,
  `Total Orders`,
  CASE 
    WHEN `Total Orders` > 1 THEN 1
    ELSE 0
  END AS Is_Repeat
FROM customer_order_stats;

SELECT * FROM customer_repeat_flag LIMIT 15;

CREATE OR REPLACE VIEW kpi_retention AS
SELECT
  ROUND(100.0 * SUM(Is_Repeat) / COUNT(*), 2) AS Repeat_Customer_Percentage
FROM customer_repeat_flag;

SELECT * FROM kpi_retention;

#sanitycheck
SELECT * FROM kpi_region_category LIMIT 5;

SELECT * FROM kpi_monthly_sales ORDER BY Month_Start LIMIT 5;

SELECT * FROM kpi_retention;

