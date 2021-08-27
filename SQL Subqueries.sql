--Introduction to Subqueries
SELECT BusinessEntityID
, SalesYTD
, (SELECT MAX (SalesYTD)
FROM Sales.SalesPerson) AS HighestSalesYTD
, (SELECT MAX (SalesYTD)
FROM Sales.SalesPerson) - SalesYTD AS SalesGap
FROM Sales.SalesPerson
ORDER BY SalesYTD DESC;


--Use a Subquery in a WHERE Clause
SELECT SalesOrderID, SUM(LineTotal) AS OrderTotal
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LineTotal) >
	(SELECT AVG(ResultTable.MyValues) AS AverageValue
	FROM (SELECT SUM(LineTotal) AS MyValues
		FROM Sales.SalesOrderDetail
		GROUP BY SalesOrderID) AS ResultTable);


--Correlated Subqueries
SELECT BusinessEntityID
, FirstName
, LastName
, (SELECT JobTitle
FROM HumanResources.Employee
WHERE BusinessEntityID = MyPeople.BusinessEntityID) AS JobTitle
FROM Person.Person AS MyPeople
WHERE (SELECT JobTitle
FROM HumanResources.Employee
WHERE BusinessEntityID = MyPeople.BusinessEntityID) IS NOT NULL;

SELECT BusinessEntityID
, FirstName
, LastName
, (SELECT JobTitle
FROM HumanResources.Employee
WHERE BusinessEntityID = MyPeople.BusinessEntityID) AS JobTitle
FROM Person.Person AS MyPeople
WHERE EXISTS (SELECT JobTitle
FROM HumanResources.Employee
WHERE BusinessEntityID = MyPeople.BusinessEntityID);


--PIVOT the Result Set
SELECT ProductLine, AVG(ListPrice) AS AveragePrice
FROM Production.Product
WHERE ProductLine IS NOT NULL
GROUP BY ProductLine;

SELECT 'Average List Price' AS 'Product Line'
, M, R, S, T
FROM (SELECT ProductLine, ListPrice
FROM Production.Product) AS SourceData
PIVOT (AVG(ListPrice) FOR ProductLine IN (M, R,S, T)) AS PivotTable;