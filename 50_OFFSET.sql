SELECT * FROM DimProduct
ORDER BY ProductKey
OFFSET 10 ROWS
-- Offset will skip specified rows (10 in this case)
-- ORDER BY is mandatory to use before OFFSET
-- Above query will ignore first 10 rows and return remaining

SELECT * FROM DimProduct
ORDER BY ProductKey
OFFSET 10 ROWS
FETCH FIRST 10 ROWS ONLY
-- The above query will display rows from 11 to 20