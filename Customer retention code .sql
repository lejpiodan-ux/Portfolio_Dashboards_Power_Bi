/*Dim Geo View - Widok zawierający adres klienta oraz miasto */

CREATE VIEW [Dim Geo] AS
SELECT
    pa.AddressID,
    pa.City,
    CountryRegionName
FROM Person.Address pa
JOIN Person.vStateProvinceCountryRegion pc 
    ON pa.StateProvinceID = pc.StateProvinceID;

/*Dim Individual Customers - widok  zawierający id klienta  oraz połączone imię i nazwisko*/

CREATE VIEW [Dim indyvidual Customers] AS
SELECT
    BusinessEntityID,
    Title,
    FirstName,
    MiddleName,
    LastName,
    CASE 
        WHEN MiddleName IS NULL THEN CONCAT(firstname, ' ', lastname)
        WHEN middlename IS NOT NULL AND len(middlename) > 0 THEN CONCAT(firstname, ' ', middlename, '. ', lastname)
        ELSE CONCAT(firstname, ' ', middlename, ' ', lastname)
    END AS [customer fullname]
FROM Person.Person
WHERE PersonType LIKE 'in'; -- In jest interpretowane jako indywidualni klienci ( bez sklepów)

/* Facts view */

CREATE VIEW facts AS
SELECT
    soh.DueDate,
    soh.ShipDate,
    soh.Status,
    soh.SubTotal AS [total sales per order],
    soh.TotalDue,
    soh.TaxAmt,
    soh.Freight,
    pp.BusinessEntityID,
    bea.AddressID,
    pp.PersonType
FROM Sales.SalesOrderHeader soh
LEFT JOIN Sales.Customer sc 
    ON soh.CustomerID = sc.CustomerID
LEFT JOIN Person.Person pp 
    ON sc.PersonID = pp.BusinessEntityID
LEFT JOIN Person.BusinessEntityAddress bea 
    ON pp.BusinessEntityID = bea.BusinessEntityID
WHERE persontype LIKE 'in';


/* fact2 - Widok ukazujący ilość dni pomiędzy ostatnim a przed ostatnim zamówieniem */

CREATE VIEW fact2 AS
WITH win AS (
    SELECT 
        *,
        LAG(orderdate) OVER (PARTITION BY businessentityid ORDER BY businessentityid ASC, orderdate ASC) AS [previous date],
        DATEDIFF(DAY, orderdate, LAG(orderdate) OVER (PARTITION BY businessentityid ORDER BY businessentityid ASC)) AS [days between orders quantity]
    FROM dbo.facts
)
SELECT 
    *,
    CASE 
        WHEN MIN([days between orders quantity]) OVER (PARTITION BY businessentityid) IS NULL THEN 0
        ELSE MIN([days between orders quantity]) OVER (PARTITION BY businessentityid)
    END AS [days_between_last_and_previous_order]
FROM win;
