



--Widok tabeli FACT:

CREATE VIEW Fact AS
SELECT
    soh.SalesOrderID,
    soh.OrderDate,
    sod.ProductID,
    p.Name AS ProductName,
    pc.ProductCategoryID,
    c.CustomerID,
    sod.LineTotal AS SalesAmount,
    sod.OrderQty
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod
    ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory ps
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN Production.ProductCategory pc
    ON ps.ProductCategoryID = pc.ProductCategoryID
JOIN Sales.Customer c
    ON soh.CustomerID = c.CustomerID
WHERE soh.Status = 5;  -- Completed Orders


--View DIM COUNTRY:

create view DIMcountry as
SELECT
    c.CustomerID,
    'Person' AS CustomerType,
    cr.Name AS Country
FROM Sales.Customer c
JOIN Person.Person p
    ON c.PersonID = p.BusinessEntityID
JOIN Person.BusinessEntityAddress bea
    ON p.BusinessEntityID = bea.BusinessEntityID
JOIN Person.Address a
    ON bea.AddressID = a.AddressID
JOIN Person.StateProvince sp
    ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion cr
    ON sp.CountryRegionCode = cr.CountryRegionCode

UNION ALL

-- customers (shops)
SELECT
    c.CustomerID,
    'Store' AS CustomerType,
    cr.Name AS Country
FROM Sales.Customer c
JOIN Sales.Store s
    ON c.StoreID = s.BusinessEntityID
JOIN Person.BusinessEntityAddress bea
    ON s.BusinessEntityID = bea.BusinessEntityID
JOIN Person.Address a
    ON bea.AddressID = a.AddressID
JOIN Person.StateProvince sp
    ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion cr
    ON sp.CountryRegionCode = cr.CountryRegionCode;



--View DIM CATEGORY:

create view dimCategory as
select*
from Production.ProductCategory
