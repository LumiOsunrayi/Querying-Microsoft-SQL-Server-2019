---String Functions
SELECT FirstName, LastName
, UPPER (FirstName) AS UpperCase
, LOWER (LastName) AS LowerCase
, LEN (FirstName) AS LengthOfFirstName
, LEFT (LastName, 3) AS FirstThreeLetters
, RIGHT (LastName, 3) AS LastThreeLetters
, TRIM (LastName) AS TrimmedName
FROM Person.Person;


---Text Concatenation
SELECT FirstName, LastName
, CONCAT (FirstName, ' ', MiddleName, ' ', LastName) AS FullName
, CONCAT_WS (' ', FirstName, MiddleName, LastName) AS WithSeparators
FROM Person.Person;


---Round with Mathematical Functions
SELECT BusinessEntityID, SalesYTD
, ROUND (SalesYTD, 2) AS Round2
, ROUND (SalesYTD, -2) AS RoundHundreds
, CEILING (SalesYTD) AS RoundCeiling
, FLOOR (SalesYTD) AS RoundFloor
FROM Sales.SalesPerson;


---Work with Date Functions
SELECT BusinessEntityID
, HireDate
, YEAR (HireDate) AS HireYear
, MONTH (HireDate) AS HireMonth
, DAY (HireDate) AS HiireDay
FROM HumanResources.Employee;

SELECT YEAR(HireDate), COUNT(*) AS NewHires
FROM HumanResources.Employee
GROUP BY YEAR(HireDate);

SELECT GETDATE()

SELECT GETUTCDATE()

SELECT BusinessEntityID
, HireDate
, DATEDIFF (day, HireDate, GETDATE()) AS DaysSinceHire
FROM HumanResources.Employee;

SELECT BusinessEntityID
, HireDate
, DATEDIFF (year, HireDate, GETDATE()) AS YearssSinceHire
FROM HumanResources.Employee;

SELECT BusinessEntityID
, HireDate
, DATEDIFF (year, HireDate, GETDATE()) AS YearssSinceHire
, DATEADD (year, 10, HireDate) AS AnniversaryDate
FROM HumanResources.Employee;

SELECT BusinessEntityID
, HireDate
, FORMAT (HireDate, 'dddd, MMM, dd, yyyy') AS FormattedDate
FROM HumanResources.Employee;

SELECT BusinessEntityID
, HireDate
, FORMAT (HireDate, 'd-MMM') AS FormattedDate
FROM HumanResources.Employee;


---Return Random Records with NEWID
SELECT WorkOrderID
, NEWID () AS NewID
FROM Production.WorkOrder
ORDER BY NewID;

SELECT TOP 10 WorkOrderID
, NEWID () AS NewID
FROM Production.WorkOrder
ORDER BY NewID;


---The IIF Logical Function
SELECT BusinessEntityID
, SalesYTD, IIF (SalesYTD > 2000000, 'Met Sales goal', 'Has not met goal') AS Status
FROM Sales.SalesPerson;

SELECT IIF (SalesYTD > 2000000, 'Met Sales goal', 'Has not met goal') AS Status
, COUNT(*)
FROM Sales.SalesPerson
GROUP BY IIF (SalesYTD > 2000000, 'Met Sales goal', 'Has not met goal');