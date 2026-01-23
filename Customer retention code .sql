CREATE VIEW [Dim Geo] AS
SELECT
    pa.AddressID,
    pa.City,
    CountryRegionName
FROM Person.Address pa
JOIN Person.vStateProvinceCountryRegion pc 
    ON pa.StateProvinceID = pc.StateProvinceID;
