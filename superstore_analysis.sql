
-- ============================================================
-- PROJECT: Global Superstore Sales Analysis
-- DATABASE: superstore_db
-- TABLE: orders
-- PURPOSE: Business analysis using SQL
-- ============================================================

USE superstore_db;

-- 1. Overall Business Performance
SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM orders;


-- 2. Category-wise Sales and Profit Analysis

SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 3. Region-wise Sales and Profit Analysis

SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;



-- 4. Monthly Sales Trend Analysis

USE superstore_db;

DESCRIBE orders;


SELECT `Order Date`
FROM orders
LIMIT 10;




SELECT LEFT('2012-07-31', 7);


USE superstore_db;

SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;


USE superstore_db;

SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;


USE superstore_db;

SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Percentage
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;


USE superstore_db;

SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC
LIMIT 10;


USE superstore_db;

SELECT
    Segment,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM orders
GROUP BY Segment
ORDER BY Total_Sales DESC;


USE superstore_db;

SELECT
    `Ship Mode`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM orders
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;