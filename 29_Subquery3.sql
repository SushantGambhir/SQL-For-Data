SELECT * FROM FactInternetSales
WHERE EXISTS
(
SELECT ProductKey FROM DimProduct WHERE Color='Red'
)
-- EXISTS returns TRUE (If atleast one row is returned) / FALSE (If no row is returned).
-- Hence above query EXISTS returns TRUE and all rows of FactInternetSales are printed

-- The below query will not print any row
SELECT * FROM FactInternetSales
WHERE NOT EXISTS
(
SELECT ProductKey FROM DimProduct WHERE Color='Red'
)

-- Now we intend to display FactInternetSales details for Red color product using EXISTS
SELECT * FROM FactInternetSales F
WHERE EXISTS
(
SELECT ProductKey FROM DimProduct P 
WHERE F.ProductKey = P.ProductKey
AND Color='Red'
)
-- In above subquery we are reffering to the outer table in the subquery. Such queries are called
-- Co related subqueries


-- Problem Statement: We want to display percentage contribution of each year out of total sales
SELECT YEAR(OrderDate) AS OrderYear,SUM(SalesAmount) AS TotalSales,
FORMAT((SUM(SalesAmount)/(SELECT SUM(SalesAmount) FROM FactInternetSales)),'P') AS PercentageContribution -- , 'P' formats the output float to percentage
FROM FactInternetSales
GROUP BY YEAR(OrderDate)
ORDER BY YEAR(OrderDate)