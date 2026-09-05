-- =========================================================
-- E-Commerce Sales & Profitability Analysis
-- Database: MySQL
-- Author: Harshit Bhatt
-- =========================================================


-- =========================================================
-- E-Commerce Sales & Profitability Analysis
-- Database: MySQL
-- Author: Harshit Bhatt
-- =========================================================


-- =========================================================
-- 1. DATABASE & TABLE SETUP
-- =========================================================

CREATE DATABASE retail_profitability;

USE retail_profitability;


-- Create Orders table

CREATE TABLE orders (
    `Row ID` INT,
    `Order ID` VARCHAR(20),
    `Order Date` DATE,
    `Ship Date` DATE,
    `Ship Mode` VARCHAR(30),
    `Customer ID` VARCHAR(20),
    `Customer Name` VARCHAR(100),
    `Segment` VARCHAR(30),
    `Country/Region` VARCHAR(100),
    `City` VARCHAR(100),
    `State/Province` VARCHAR(100),
    `Postal Code` VARCHAR(20),
    `Region` VARCHAR(30),
    `Product ID` VARCHAR(30),
    `Category` VARCHAR(50),
    `Sub-Category` VARCHAR(50),
    `Product Name` VARCHAR(255),
    `Sales` DECIMAL(12,2),
    `Quantity` INT,
    `Discount` DECIMAL(5,2),
    `Profit` DECIMAL(12,2),
    `Order Year` INT,
    `Order Month` INT,
    `Month Name` VARCHAR(20),
    `Quarter` INT,
    `Day Name` VARCHAR(20),
    `Shipping Time` INT,
    `Profit Margin %` DECIMAL(10,2),
    `Discount %` DECIMAL(10,2)
);


-- =========================================================
-- 2. DATA IMPORT
-- =========================================================

-- Check whether LOCAL INFILE is enabled

SHOW VARIABLES LIKE 'local_infile';

-- Enable LOCAL INFILE if required
-- Note: This may require appropriate MySQL privileges.

SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'local_infile';


-- Import cleaned UTF-8 CSV file

LOAD DATA LOCAL INFILE
'C:/Users/arshi/OneDrive/Desktop/New Project/Orders_Clean_UTF8.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- =========================================================
-- 3. DATA VALIDATION
-- =========================================================

-- View imported data

SELECT *
FROM orders
LIMIT 5;


-- Check number of records

SELECT COUNT(*) AS total_rows
FROM orders;


-- Check available tables

SHOW TABLES;


-- Check table structure

DESCRIBE orders;


-- =========================================================
-- 4. YEARLY SALES & PROFIT PERFORMANCE
-- =========================================================

-- Total Sales and Profit by Year

SELECT 
    `Order Year`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Order Year`
ORDER BY `Order Year`;


-- Year-over-Year comparison

SELECT 
    `Order Year`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    LAG(SUM(Sales)) OVER (
        ORDER BY `Order Year`
    ) AS Previous_Year_Sales,
    LAG(SUM(Profit)) OVER (
        ORDER BY `Order Year`
    ) AS Previous_Year_Profit
FROM orders
GROUP BY `Order Year`
ORDER BY `Order Year`;


-- Calculate Sales and Profit Growth %

SELECT 
    `Order Year`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,

    LAG(SUM(Sales)) OVER (
        ORDER BY `Order Year`
    ) AS Previous_Year_Sales,

    LAG(SUM(Profit)) OVER (
        ORDER BY `Order Year`
    ) AS Previous_Year_Profit,

    (
        (
            SUM(Sales) -
            LAG(SUM(Sales)) OVER (
                ORDER BY `Order Year`
            )
        )
        /
        LAG(SUM(Sales)) OVER (
            ORDER BY `Order Year`
        )
    ) * 100 AS `Sales_Growth %`,

    (
        (
            SUM(Profit) -
            LAG(SUM(Profit)) OVER (
                ORDER BY `Order Year`
            )
        )
        /
        LAG(SUM(Profit)) OVER (
            ORDER BY `Order Year`
        )
    ) * 100 AS `Profit_Growth %`

FROM orders
GROUP BY `Order Year`
ORDER BY `Order Year`;


-- =========================================================
-- 5. CATEGORY PERFORMANCE
-- =========================================================

-- Sales, Profit and Quantity by Category

SELECT 
    `Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM orders
GROUP BY `Category`;


-- Category Profit Margin

SELECT
    `Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS `Profit Margin %`
FROM orders
GROUP BY `Category`;


-- =========================================================
-- 6. SUB-CATEGORY PROFITABILITY
-- =========================================================

-- Sales, Profit, Quantity and Profit Margin by Sub-Category

SELECT 
    `Sub-Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS `Profit Margin %`
FROM orders
GROUP BY `Sub-Category`;


-- Identify Loss-Making Sub-Categories

SELECT 
    `Sub-Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS `Profit Margin %`
FROM orders
GROUP BY `Sub-Category`
HAVING SUM(Profit) < 0
ORDER BY SUM(Profit) ASC;


-- Rank Sub-Categories by Profitability

SELECT 
    `Sub-Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS `Profit Margin %`
FROM orders
GROUP BY `Sub-Category`
ORDER BY SUM(Profit) DESC;


-- =========================================================
-- 7. DISCOUNT & PROFITABILITY ANALYSIS
-- =========================================================

-- Analyze the relationship between Discount and Profitability

SELECT 
    `Discount %`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS `Profit Margin %`
FROM orders
GROUP BY `Discount %`
ORDER BY `Discount %`;


-- =========================================================
-- 8. PRODUCT PROFITABILITY
-- =========================================================

-- Overall Product Profitability

SELECT 
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS `Profit Margin %`
FROM orders
GROUP BY `Product Name`
ORDER BY SUM(Profit) DESC;


-- Identify Products with Above-Average Sales
-- but Zero or Negative Profit

WITH Product_Performance AS (
    SELECT
        `Product Name`,
        SUM(Sales) AS Total_Sales,
        SUM(Profit) AS Total_Profit,
        SUM(Quantity) AS Total_Quantity
    FROM orders
    GROUP BY `Product Name`
)

SELECT
    `Product Name`,
    Total_Sales,
    Total_Profit,
    Total_Quantity,
    ROUND(
        Total_Profit / Total_Sales * 100,
        2
    ) AS `Profit Margin %`
FROM Product_Performance
WHERE Total_Sales > (
    SELECT AVG(Total_Sales)
    FROM Product_Performance
)
AND Total_Profit <= 0
ORDER BY Total_Profit ASC;


-- =========================================================
-- 9. STATE-LEVEL PROFITABILITY
-- =========================================================

-- Identify States/Provinces Generating Overall Loss

SELECT 
    `State/Province`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS `Profit Margin %`
FROM orders
GROUP BY `State/Province`
HAVING SUM(Profit) < 0
ORDER BY SUM(Profit) ASC;


-- =========================================================
-- 10. REGIONAL PERFORMANCE
-- =========================================================

-- Identify Regions Requiring Attention

SELECT 
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS `Profit Margin %`
FROM orders
GROUP BY Region
ORDER BY SUM(Profit) DESC;


-- =========================================================
-- 11. SHIPPING PERFORMANCE
-- =========================================================

-- Analyze Sales, Profitability and Shipping Time by Ship Mode

SELECT 
    `Ship Mode`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    AVG(`Shipping Time`) AS Average_Shipping_Time,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS `Profit Margin %`
FROM orders
GROUP BY `Ship Mode`
ORDER BY AVG(`Shipping Time`);


-- =========================================================
-- 12. SEASONAL SALES PERFORMANCE
-- =========================================================

-- Analyze Monthly Sales and Profitability

SELECT 
    `Order Month`,
    `Month Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS `Profit Margin %`
FROM orders
GROUP BY 
    `Order Month`,
    `Month Name`
ORDER BY `Order Month`;


-- =========================================================
-- END OF ANALYSIS
-- =========================================================