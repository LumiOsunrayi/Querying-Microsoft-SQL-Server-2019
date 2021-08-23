---Using GROUP BY and COUNT
SELECT City, StateProvinceID, COUNT (*) AS CountOfAddresses
FROM Person.Address
GROUP BY City, StateProvinceID
ORDER BY CountOfAddresses DESC;


---Exploring Data with SUM
SELECT SalesOrderID
, SUM(LineTotal) AS OrderTotal
, SUM(OrderQty) AS NumberOfItems
, COUNT(DISTINCT ProductID) AS UniqueItems
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
ORDER BY OrderTotal DESC;

SELECT SalesOrderDetail.ProductID
, Product.Name
,SUM(SalesOrderDetail.OrderQty) AS TotalQtySold
FROM Sales.SalesOrderDetail INNER JOIN Production.Product
ON Sales.SalesOrderDetail.ProductID = Production.Product.ProductID
GROUP BY SalesOrderDetail.ProductID, Product.Name
ORDER BY TotalQtySold DESC;


---Filtering Groups with HAVING
SELECT Color, COUNT(*) AS NumberOfProducts
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color
HAVING COUNT(*) > 25;