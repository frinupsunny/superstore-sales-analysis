#SQL analysis

# Total Sales
SELECT
    SUM(Sales) AS Total_Sales
FROM superstore_clean;

#Total Profit
SELECT
    SUM(Profit) AS Total_Profit
FROM superstore_clean;

#Total Quantity
SELECT
    SUM(Quantity) AS Total_Quantity
FROM superstore_clean;

#Number of Orders
SELECT
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore_clean;

#Number of Customers
SELECT
    COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM superstore_clean;

#Category analysis

#Sales by category
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore_clean
GROUP BY Category
ORDER BY Total_Sales DESC;

#Profit by category
SELECT
    Category,
    SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY Category
ORDER BY Total_Profit DESC;

#Category sales + profit together
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY Category
ORDER BY Total_Sales DESC;

#Regional analysis

#Sales by region
SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM superstore_clean
GROUP BY Region
ORDER BY Total_Sales DESC;

#Profit by region
SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY Region
ORDER BY Total_Profit DESC;

#Region performance
SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore_clean
GROUP BY Region
ORDER BY Total_Sales DESC;

#Yearly analysis
SELECT
    Year,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY Year
ORDER BY Year;

#Top products

#Top 10 products by sales
SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales
FROM superstore_clean
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

#Top 10 products by profit
SELECT
    `Product Name`,
    SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

#Customer analysis

#Top 10 customers by sales
SELECT
    `Customer Name`,
    SUM(Sales) AS Total_Sales
FROM superstore_clean
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

#Customer segment performance
SELECT
    Segment,
    COUNT(DISTINCT `Customer ID`) AS Customers,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY Segment
ORDER BY Total_Sales DESC;

#Find loss-making products
SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;

SELECT
    `Product Name`,
    SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC
LIMIT 10;

#Discount analysis
SELECT
    Discount,
    COUNT(*) AS Transactions,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    AVG(Profit) AS Average_Profit
FROM superstore_clean
GROUP BY Discount
ORDER BY Discount;

#Sub-category analysis
SELECT
    `Sub-Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;

SELECT
    `Sub-Category`,
    SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC;

