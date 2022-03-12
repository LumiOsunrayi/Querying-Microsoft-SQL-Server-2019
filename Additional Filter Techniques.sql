--Limit results with TOP
SELECT TaxRate, Name
FROM Sales.SalesTaxRate;

SELECT TOP 3 TaxRate, Name
FROM Sales.SalesTaxRate;

SELECT TOP 3 TaxRate, Name
FROM Sales.SalesTaxRate
ORDER BY TaxRate DESC;

SELECT TOP 3 TaxRate, Name
FROM Sales.SalesTaxRate
ORDER BY TaxRate;

SELECT TOP 50 PERCENT TaxRate, Name
FROM Sales.SalesTaxRate
ORDER BY TaxRate;

SELECT TOP 5 TaxRate, Name
FROM Sales.SalesTaxRate
ORDER BY TaxRate;

SELECT TOP 5 WITH TIES TaxRate, Name
FROM Sales.SalesTaxRate
ORDER BY TaxRate;


--Remove duplicates with DISTINCT
SELECT *
FROM Person.Address;

SELECT City
FROM Person.Address;

SELECT DISTINCT City
FROM Person.Address;

SELECT DISTINCT City
FROM Person.Address
ORDER BY City;

SELECT DISTINCT City, StateProvinceID
FROM Person.Address
ORDER BY City;


--Comparison operators
SELECT TaxRate, Name
FROM Sales.SalesTaxRate;

SELECT TaxRate, Name
FROM Sales.SalesTaxRate
WHERE TaxRate = 7.25;

SELECT TaxRate, Name
FROM Sales.SalesTaxRate
WHERE TaxRate >= 7.25;

SELECT TaxRate, Name
FROM Sales.SalesTaxRate
WHERE TaxRate !> 7.25;

SELECT TaxRate, Name
FROM Sales.SalesTaxRate
WHERE (TaxRate > 7) AND (TaxRate < 10);

SELECT TaxRate, Name
FROM Sales.SalesTaxRate
WHERE (TaxRate >= 7) AND (TaxRate <= 10);


--Understand NULL values
SELECT WorkOrderID, ScrappedQty, ScrapReasonID
FROM Production.WorkOrder;

SELECT WorkOrderID, ScrappedQty, ScrapReasonID
FROM Production.WorkOrder
WHERE ScrapReasonID <>NULL;

SELECT WorkOrderID, ScrappedQty, ScrapReasonID
FROM Production.WorkOrder
WHERE ScrapReasonID IS NOT NULL;

SELECT WorkOrderID, ScrappedQty, ScrapReasonID
FROM Production.WorkOrder
WHERE ScrapReasonID IS NULL;

SELECT WorkOrderID, ScrappedQty, ISNULL (ScrapReasonID, 99) AS ScrapReason
FROM Production.WorkOrder;


--Matching text with LIKE and wildcards
SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'A%'

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '%A'

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '%A%'

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'A___'

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '[ABC]%'

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'A[LMN]___'

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'A[L-N]___'