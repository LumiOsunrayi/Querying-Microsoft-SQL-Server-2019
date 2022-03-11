/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [DepartmentID]
      ,[Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [AdventureWorks2017].[HumanResources].[Department]


--Returning records with SELECT and FROM
SELECT GroupName, Name, DepartmentID, ModifiedDate
FROM HumanResources.Department;

SELECT *
FROM HumanResources.Department;


--Filtering with WHERE clause
SELECT *
FROM HumanResources.Department
WHERE GroupName = 'Research and Development';

SELECT *
FROM HumanResources.Department
WHERE GroupName <> 'Research and Development';

SELECT *
FROM HumanResources.Department
WHERE (GroupName <> 'Research and Development') AND (DepartmentID < 10);

SELECT *
FROM HumanResources.Department
WHERE (GroupName = 'Research and Development') 
OR (GroupName = 'Quality Assurance');

SELECT *
FROM HumanResources.Department
WHERE GroupName IN ('Research and Development','Quality Assurance');


--Sorting records with ORDER BY
SELECT *
FROM HumanResources.Department
ORDER BY GroupName;

SELECT *
FROM HumanResources.Department
ORDER BY GroupName DESC;

SELECT *
FROM HumanResources.Department
ORDER BY GroupName DESC, DepartmentID;


--Column aliases
SELECT Name AS 'Department Name', GroupName AS 'Management Group'
FROM HumanResources.Department;


--Creating values with constants
SELECT Name, ProductNumber
FROM Production.Product;

SELECT Name, ProductNumber, 'Adventure Works'
FROM Production.Product;

SELECT Name, ProductNumber, 'Adventure Works' AS Manufacturer
FROM Production.Product;

SELECT Name, ProductNumber, 'Adventure Works' AS Manufacturer, ListPrice
FROM Production.Product;

SELECT Name, ProductNumber, 'Adventure Works' AS Manufacturer, ListPrice
FROM Production.Product
WHERE ListPrice > 0;

SELECT Name, ProductNumber, 'Adventure Works' AS Manufacturer, ListPrice,
ListPrice * .85 AS SalePrice
FROM Production.Product
WHERE ListPrice > 0;