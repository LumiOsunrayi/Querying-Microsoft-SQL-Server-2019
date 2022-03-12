--Inner joins
SELECT BusinessEntityID, FirstName, LastName
FROM Person.Person;

SELECT BusinessEntityID, PhoneNumber
FROM Person.PersonPhone;

SELECT BusinessEntityID, PhoneNumber
FROM Person.PersonPhone
WHERE BusinessEntityID = 285;

SELECT Person.BusinessEntityID
, Person.FirstName
, Person.LastName
, PersonPhone.PhoneNumber
FROM Person.Person INNER JOIN Person.PersonPhone 
ON Person.BusinessEntityID = PersonPhone.BusinessEntityId;

SELECT A.BusinessEntityID
, A.FirstName
, A.LastName
, B.PhoneNumber
FROM Person.Person AS A INNER JOIN Person.PersonPhone AS B
ON A.BusinessEntityID = B.BusinessEntityId;


--Left, right and full outer joins
SELECT BusinessEntityID, PersonType, FirstName, LastName
FROM Person.Person;

SELECT BusinessEntityID, JobTitle
FROM HumanResources.Employee;

SELECT Person.BusinessEntityID
, Person.PersonType
, Person.FirstName
, Person.LastName
, Employee.JobTitle
FROM Person.Person JOIN HumanResources.Employee
ON Person.BusinessEntityID = Employee.BusinessEntityID;

SELECT Person.BusinessEntityID
, Person.PersonType
, Person.FirstName
, Person.LastName
, Employee.JobTitle
FROM Person.Person LEFT JOIN HumanResources.Employee
ON Person.BusinessEntityID = Employee.BusinessEntityID;

SELECT Person.BusinessEntityID
, Person.PersonType
, Person.FirstName
, Person.LastName
, Employee.JobTitle
FROM Person.Person LEFT OUTER JOIN HumanResources.Employee
ON Person.BusinessEntityID = Employee.BusinessEntityID;

SELECT Person.BusinessEntityID
, Person.PersonType
, Person.FirstName
, Person.LastName
, Employee.JobTitle
FROM Person.Person RIGHT OUTER JOIN HumanResources.Employee
ON Person.BusinessEntityID = Employee.BusinessEntityID;

SELECT Person.BusinessEntityID
, Person.PersonType
, Person.FirstName
, Person.LastName
, Employee.JobTitle
FROM Person.Person FULL OUTER JOIN HumanResources.Employee
ON Person.BusinessEntityID = Employee.BusinessEntityID;


--Cross joins
SELECT Department.Name
FROM HumanResources.Department;

SELECT AddressType.Name
FROM Person.AddressType;

SELECT Department.Name AS DepartmentName, AddressType.Name AS AddressName
FROM HumanResources.Department CROSS JOIN Person.AddressType

SELECT A.Name, B.Name 
FROM HumanResources.Department AS A CROSS JOIN HumanResources.Department AS B
WHERE A.NAME <> B.Name;