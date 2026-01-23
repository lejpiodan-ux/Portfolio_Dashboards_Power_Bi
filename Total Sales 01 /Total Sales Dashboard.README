Cel Dashboardu: Zwrócić uwagę na całkowitą sprzedaż produktów firmy. Porównać ją z innymi okresami, oraz ukazać co sprzedaje się najlepiej.
Źródło danych: Publiczna baza danych Adventure Works

BACKEND: Przygotowanie Widoków w SSMS aby zoptymalizować dane przed transportem do Power Bi 

Widoki wykonane w SSMS:
- DIM CATEGORY (Prosty Widok pobierający kategorie produktów)
- DIM COUNTRY (Zastosowanie `Union ALL` aby połączyć dane dla klientów indywidualnych (personid) oraz sklepów (storeid)
- FACTS ( Połączone tabele Sales order detail oraz sales order header w celu wyodrębnienia potrzebnych
  kluczy id, oraz wartości i dat zamówień. Dodane where soh.status = 5 aby wziąć pod uwagę tylko te sfinalizowane zamówienia żeby uniknąć błędnych danych

FRONTEND: Model gwiazdy w Power Bi, Grain : 1 wiersz = 1 order,tabele wizualizacyje ustawione w relacji one to many 1->* 

Tabele wykonane w Power bi:
Dim DATE ( kalendarz zrobiony na podstawie przedziału z minimalnej daty z kolumny orderdate do maksymalnej daty)
KPI MEASURES( Tabela zawierająca miary pisane w Daxie, aby były uporządkowane w jednym miejscu)

Wizualizacja:

Power Bi Miary KPI:
- Total Sales (całkowita sprzedaż)
- Total Sales Year-Over-Year% ( miara pokazująca procentową zmianę w porównaniu z okresem z przed roku )
- Average Order Value ( średnia wartość zamóienia)
- Order Count( ilość zamówień)

  Wykorzystanie wizuali:
  - Filtry Roczne oraz miesięczne
  - Line chart ( Pokazujący rysujący się trend sprzedaży całkowitej w porównaniu rocznym, jest wykluczony przez slicer miesięczny)
  - Pie chart ( Pokazuje udział poszczególnych kategorii w całkowitej sprzedaży)
  - Treemap ( Dostarcza informacji w którym z krajów jest kupowane najwięcej przedmiotów)
  - Tabela z filrem TopN ( ukazująca 20 najbardziej dochodowych Przedmiotów w celu przedstawienia co klienci kupują najchętniej)

Podczas tworzenia tego dashboardu, nauczyłem jak się robić Widoki w SQL, Oraz jak porządkować miary stworzone w power Bi. 
Nauczyłem się również tego czym jest GRAIN i jak ważne jest odpowiendnie zaplanowanie tabel w sql na początku rozpoczęcia projektu, aby później
nie było problemu z duplikowaniem wartości przez model danych, a także kilka podstawowych pojęć takich jak:
Backend, Frontend, Mockup.
Zrozumiałem też dokładnie jak działa model danych, oraz to  jak powinny być zbudowane tabele faktów ( tylko same id oraz obliczenia). 
Poznałem również bardzo przydatną stronę która umożliwia import różnych obrazków bezpośrednio do power BI https://www.flaticon.com/search


  =========================================================================================================================================================================================
Wykorzystane formuły
Power Bi:

FORMUŁA TWORZĄCA KALENDARZ (DIM DATE):
dim date = 
ADDCOLUMNS(
    calendar(
             min('Fact'[OrderDate]),
             max('Fact'[OrderDate])
           ),
    "Year",YEAR([Date]),
    "Month",Month([Date]),
    "Date fullname",(FORMAT([Date],"mmmm")
    )
)

============================================================================================================================================================================================

TOTAL SALES:
Total sales = sum('Fact'[SalesAmount])

============================================================================================================================================================================================

YOY TOTAL SALES:
yoy total sales = 
CALCULATE([Total sales],SAMEPERIODLASTYEAR('dim date'[Date]))

=============================================================================================================================================================================================

%YOY:
%Yoy = 
DIVIDE([Total sales]-[yoy total sales],[yoy total sales],0)

==============================================================================================================================================================================================
ORDER COUNT:
order count = 
DISTINCTCOUNT('Fact'[SalesOrderID])

==============================================================================================================================================================================================

AVERAGE ORDER VALUE:
Average Order Value = 
AVERAGE('Fact'[SalesAmount])

===============================================================================================================================================================================================





Stworzone Widoki w SSMS:

Widok tabeli FACT:

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

==============================================================================================================================================================================================

Widok tabeli DIM COUNTRY:

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

=============================================================================================

Widok tabeli DIM CATEGORY:

create view dimCategory as
select*
from Production.ProductCategory




