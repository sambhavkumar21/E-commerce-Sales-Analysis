-------------------------E-COMMERCE SQL ANALYSIS PROJECT---------------------------------------------------------------------------------------------
---Query 1 : Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM
ecommerceanalysis-496816.ecommerce_analysis.ecommerce_data;
-----------------------------------------------------------------------------------------------------------------------------------------------------
---Query 2 : Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM
ecommerceanalysis-496816.ecommerce_analysis.ecommerce_data;
-----------------------------------------------------------------------------------------------------------------------------------------------------
--Query 3: Sales By Category
SELECT
Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM
ecommerceanalysis-496816.ecommerce_analysis.ecommerce_data
GROUP BY Category
ORDER BY Total_Sales DESC;
-----------------------------------------------------------------------------------------------------------------------------------------------------
--Query 4: Profit By Region
SELECT
 Region,
ROUND(SUM(Profit),2) AS Total_Profit
FROM
ecommerceanalysis-496816.ecommerce_analysis.ecommerce_data
GROUP BY Region
ORDER BY Total_Profit DESC;
-----------------------------------------------------------------------------------------------------------------------------------------------------
--Query 5:Sales By SEGMENT
SELECT
Segment,
ROUND(SUM(Sales),2) AS Total_Sales
FROM
ecommerceanalysis-496816.ecommerce_analysis.ecommerce_data
GROUP BY Segment
ORDER BY Total_Sales DESC;
----------------------------------------------------------------------------------------------------------------------------------------------------
--Query 6: TOP 10 Products
SELECT
 `Product Name`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM
ecommerceanalysis-496816.ecommerce_analysis.ecommerce_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
-----------------------------------------------------------------------------------------------------------------------------------------------------
--QUERY 7:Monthly Sales Trend
SELECT
EXTRACT(MONTH FROM `Order Date`) AS Month,
ROUND(SUM(Sales),2) AS Total_Sales
FROM
ecommerceanalysis-496816.ecommerce_analysis.ecommerce_data
GROUP BY Month
ORDER BY Month;
-----------------------------------------------------------------------------------------------------------------------------------------------------
--QUERY 8: AVERAGE ORDER VALUE
SELECT
ROUND(SUM(Sales)/COUNT(DISTINCT `Order ID`),2) AS Avg_Order_Value
FROM
ecommerceanalysis-496816.ecommerce_analysis.ecommerce_data;
-----------------------------------------------------------------------------------------------------------------------------------------------------
--QUERY 9:TOP CUSTOMERS
SELECT
`Customer Name`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM
ecommerceanalysis-496816.ecommerce_analysis.ecommerce_data
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
-----------------------------------------------------------------------------------------------------------------------------------------------------
--QUERY 10: PROFIT MARGIN BY CATEGORY
SELECT
 Category,
 ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin
 FROM
 ecommerceanalysis-496816.ecommerce_analysis.ecommerce_data
 GROUP BY Category
 ORDER BY Profit_Margin DESC;