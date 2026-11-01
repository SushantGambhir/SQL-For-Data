SELECT COUNT(*)
FROM FactInternetSales

SELECT SalesAmount
FROM FactInternetSales

--Sum of Sales Amount
SELECT SUM(SalesAmount)
AS TotalSales
FROM FactInternetSales

--Average
SELECT AVG(SalesAmount)
AverageSales
FROM FactInternetSales

--Maximum value
SELECT MAX(SalesAmount)
FROM FactInternetSales

--Minimum value
SELECT MIN(SalesAmount)
FROM FactInternetSales

--Sum and average of Sales Amount
SELECT SUM(SalesAmount)
AS TotalSales,
AVG(SalesAmount)
AverageSales
FROM FactInternetSales

-- Number of rows in a table
SELECT COUNT(*)
FROM DimProduct

-- Count of rows which are not null in that column
SELECT COUNT(ListPrice)
FROM DimProduct
--Alternatively
SELECT COUNT(*)
FROM DimProduct
WHERE ListPrice IS NOT NULL

--Count of null rows
SELECT COUNT(*)
FROM DimProduct
WHERE ListPrice IS NULL