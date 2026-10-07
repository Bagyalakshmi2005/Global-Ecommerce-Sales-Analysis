-- Global E-Commerce Sales Analysis
-- SQL analysis queries used in the project

CREATE DATABASE IF NOT EXISTS ecommerce_analysis;
USE ecommerce_analysis;

-- Verify total number of records
SELECT COUNT(*) AS Total_Orders
FROM ecommerce_sales;

-- 1. Overall KPIs
SELECT
    ROUND(SUM(Total_Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    COUNT(Order_ID) AS Total_Orders,
    ROUND(AVG(Total_Sales), 2) AS Average_Order_Value,
    ROUND(MAX(Total_Sales), 2) AS Highest_Order_Sales,
    ROUND(MIN(Total_Sales), 2) AS Lowest_Order_Sales
FROM ecommerce_sales;

-- 2. Sales by Region
SELECT Region, ROUND(SUM(Total_Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 3. Profit by Region
SELECT Region, ROUND(SUM(Profit), 2) AS Total_Profit
FROM ecommerce_sales
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 4. Sales by Customer Segment
SELECT Customer_Segment, ROUND(SUM(Total_Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY Customer_Segment
ORDER BY Total_Sales DESC;

-- 5. Profit by Customer Segment
SELECT Customer_Segment, ROUND(SUM(Profit), 2) AS Total_Profit
FROM ecommerce_sales
GROUP BY Customer_Segment
ORDER BY Total_Profit DESC;

-- 6. Sales by Product Category
SELECT Product_Category, ROUND(SUM(Total_Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

-- 7. Profit by Product Category
SELECT Product_Category, ROUND(SUM(Profit), 2) AS Total_Profit
FROM ecommerce_sales
GROUP BY Product_Category
ORDER BY Total_Profit DESC;

-- 8. Sales by Country
SELECT Country, ROUND(SUM(Total_Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY Country
ORDER BY Total_Sales DESC;

-- 9. India performance
SELECT
    ROUND(SUM(Total_Sales), 2) AS Sales,
    ROUND(SUM(Profit), 2) AS Profit,
    COUNT(Order_ID) AS Orders,
    ROUND(AVG(Total_Sales), 2) AS Average_Order_Value
FROM ecommerce_sales
WHERE Country = 'India';

-- 10. Countries with sales greater than 30,000
SELECT Country, ROUND(SUM(Total_Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY Country
HAVING SUM(Total_Sales) > 30000
ORDER BY Total_Sales DESC;

-- 11. Unique countries
SELECT COUNT(DISTINCT Country) AS Number_of_Countries
FROM ecommerce_sales;

-- 12. Top 10 Products by Sales
SELECT Product_Name, ROUND(SUM(Total_Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 13. Top 10 Products by Profit
SELECT Product_Name, ROUND(SUM(Profit), 2) AS Total_Profit
FROM ecommerce_sales
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;

-- 14. Top 10 Customers by Sales
SELECT Customer_Name, ROUND(SUM(Total_Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 15. Sales by Payment Method
SELECT Payment_Method,
       COUNT(Order_ID) AS Orders,
       ROUND(SUM(Total_Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM ecommerce_sales
GROUP BY Payment_Method
ORDER BY Total_Sales DESC;

-- 16. Sales by Discount
SELECT Discount,
       COUNT(Order_ID) AS Orders,
       ROUND(SUM(Total_Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM ecommerce_sales
GROUP BY Discount
ORDER BY Discount;

-- 17. Year-wise Sales
SELECT YEAR(Order_Date) AS Year,
       ROUND(SUM(Total_Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY YEAR(Order_Date)
ORDER BY Year;

-- 18. Monthly Sales
SELECT MONTH(Order_Date) AS Month_Number,
       MONTHNAME(Order_Date) AS Month,
       ROUND(SUM(Total_Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY Month_Number;

-- 19. Monthly Profit
SELECT MONTH(Order_Date) AS Month_Number,
       MONTHNAME(Order_Date) AS Month,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM ecommerce_sales
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY Month_Number;

-- 20. Orders by Month
SELECT MONTH(Order_Date) AS Month_Number,
       MONTHNAME(Order_Date) AS Month,
       COUNT(Order_ID) AS Total_Orders
FROM ecommerce_sales
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY Month_Number;

-- 21. Loss-making Orders
SELECT COUNT(*) AS Loss_Making_Orders,
       ROUND(SUM(Profit), 2) AS Loss_Impact
FROM ecommerce_sales
WHERE Profit < 0;

-- 22. Loss by Product Category
SELECT Product_Category,
       COUNT(*) AS Loss_Orders,
       ROUND(SUM(Profit), 2) AS Loss_Impact
FROM ecommerce_sales
WHERE Profit < 0
GROUP BY Product_Category
ORDER BY Loss_Impact;

-- 23. Total Quantity and Average Quantity per Order
SELECT
    SUM(Quantity) AS Total_Quantity_Sold,
    ROUND(AVG(Quantity), 2) AS Average_Quantity_Per_Order
FROM ecommerce_sales;

-- 24. Average Shipping Cost
SELECT
    ROUND(AVG(Shipping_Cost), 2) AS Average_Shipping_Cost,
    ROUND(SUM(Shipping_Cost), 2) AS Total_Shipping_Cost
FROM ecommerce_sales;

-- 25. Average Profit per Order
SELECT ROUND(AVG(Profit), 2) AS Average_Profit_Per_Order
FROM ecommerce_sales;
