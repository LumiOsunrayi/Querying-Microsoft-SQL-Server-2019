--Change Database Context with USE
USE AdventureWorks2017;
SELECT *
FROM Person.Person;


--Add Comments to a Script
--This query selects people's names
--from the AdventureWorks database.
SELECT FirstName --This row stores First Name data
-- , LastName
FROM Person.Person;
/*
SELECT FirstName --This row stores First Name data
 , LastName
FROM Person.Person;
*/


--When to Use Square Brackets
SELECT FirstName AS [Person First Name]
, LastName AS [Person Last Name]
FROM Person.Person;