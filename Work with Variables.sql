--Create and Use Variables in a Query
DECLARE @MyFirstVariable INT;
SET @MyFirstVariable = 10;
SELECT @MyFirstVariable AS MyValue
, @MyFirstVariable * 5 AS Multiplication
, @MyFirstVariable + 10 AS Addition;

DECLARE @VarColor VARCHAR(20) = 'Red'
SELECT ProductID, Name, ProductNumber, Color, ListPrice
FROM Production.Product
WHERE Color = @VarColor;


--Create a Counter for a Looping Statement
DECLARE @Counter INT = 1;
DECLARE @Product INT = 710;
WHILE @Counter <=3
BEGIN
SELECT ProductID, Name, ProductNumber, Color, ListPrice
FROM Production.Product
WHERE ProductID = @Product;
SET @Counter = @Counter + 1
SET @Product = @Product + 10
END