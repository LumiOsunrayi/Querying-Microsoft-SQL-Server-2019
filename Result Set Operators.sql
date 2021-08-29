--Combine Results with UNION
SELECT ProductCategoryID
, NULL AS ProductSubcategoryID
, Name
FROM Production.ProductCategory
UNION
SELECT ProductCategoryID
, ProductSubcategoryID
, Name
FROM Production.ProductSubcategory;


--Return Distinct Rows with EXCEPT
SELECT BusinessEntityID
FROM Person.Person
WHERE PersonType <> 'EM'
EXCEPT
SELECT BusinessEntityID
FROM Sales.PersonCreditCard

SELECT Person.BusinessEntityID
FROM Person.Person LEFT JOIN Sales.PersonCreditCard
ON Person.BusinessEntityID = PersonCreditCard.BusinessEntityID
WHERE Person.PersonType <> 'EM' AND PersonCreditCard.CreditCardID IS NULL;


--Return Common Rows with INTERSECT
SELECT ProductID
FROM Production.ProductProductPhoto
INTERSECT
SELECT ProductID
FROM Production.ProductReview

SELECT DISTINCT A.ProductID
FROM Production.ProductProductPhoto AS A
INNER JOIN Production.ProductReview AS B
ON A.ProductID = B.ProductID;