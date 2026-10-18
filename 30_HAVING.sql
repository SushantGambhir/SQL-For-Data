--We intend to query all those Product Keys and Total Sales where Total Sales are above 100000 
SELECT ProductKey, SUM(SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey
HAVING SUM(SalesAmount)>=100000

--WHERE clause filters rows before grouping or aggregation, while the HAVING clause filters groups after aggregation

--Query all those Product Keys and Total Sales where Total Sales are above 100000 from the year 2012
SELECT ProductKey, SUM(SalesAmount) AS TotalSales
FROM FactInternetSales
WHERE YEAR(OrderDate) = 2012
GROUP BY ProductKey
HAVING SUM(SalesAmount)>=100000

-- Order of statements
-- SELECT ... 
-- FROM ... 
-- WHERE ... 
-- GROUP BY ... 
-- HAVING ... 
-- ORDER BY ...