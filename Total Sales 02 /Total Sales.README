Cel Dashboardu: Zwrócić uwagę na całkowitą sprzedaż produktów firmy. Porównać ją z innymi okresami, oraz ukazać co sprzedaje się najlepiej.
Źródło danych: Publiczna baza danych AdventureWorks2017

BACKEND: Przygotowanie Widoków w SSMS aby zoptymalizować dane przed transportem do Power Bi 

Widoki wykonane w SSMS:
- DIM CATEGORY (Prosty Widok pobierający kategorie produktów)
- DIM COUNTRY (Zastosowanie `Union ALL` aby połączyć dane dla klientów indywidualnych (personid) oraz sklepów (storeid)
- FACTS ( Połączone tabele Sales order detail oraz sales order header w celu wyodrębnienia potrzebnych
  kluczy id, oraz wartości i dat zamówień. Dodane where soh.status = 5 aby wziąć pod uwagę tylko te sfinalizowane zamówienia żeby uniknąć błędnych danych

FRONTEND: Model gwiazdy w Power Bi, Grain : 1 wiersz = 1 order,tabele wizualizacyje ustawione w relacji one to many 1->* 

Tabele wykonane w Power bi:
Dim DATE ( kalendarz zrobiony na podstawie przedziału z minimalnej daty z kolumny orderdate do maksymalnej daty)
KPI MEASURES( Uporządkowane miary Kpi zebyrane w jednym miejscu)

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


# English
Main goal of this dashboard is to pay attention on total sales of products. Compare it in periods of time and show what sells best.
Database: Adventureworks2017

# Backend
Preparation of views in sql to optimization data before power bi import.

Views :
* Dim Category ( simple view with product categories)
* Dim country ( Usage of "Union all" for connecting two tables for individual customers (personid) and stores (storeid)
* Facts (combined tables  "Sales order details", "Sales order header" for extraction needed is keys, values and dates. Added "where soh.status = 5 " to take only finalised orders, to avoid incorrect data

# Frontend
Star schema in Power bi, 1 grain =1 order. Tables set in relation 1 -> many

Tables made in Power Bi
* Dim date (Calendar created from minimum orderdate to maximum date)
* Kpi measures( All Kpi measure formulas gathered in one area )


# Used visualizations

Power Bi Kpi:
* Total Sales ( Total sales)
* Total Sales Year-Over-Year% ( measure shows % change in comparison with period one year ago)
* Average Order Value ( Average value of unit order)
* Order Count (Total amount of orders)

Used visuals:

* Year and Monthly filters
* Line chart ( Shows total sales trend in yearly comparison. Is independent by monthly slicer
* Pie chart ( Shows participation of different categories in total sales)
* Treemap ( Gives informations which country have the most products bought)
* Table with TOP N filter ( Shows top 20 most profitable products. Gives informations about customers interest


# Business Insights

# What I Learned in this project

By making this dashboard I learn how to do Views in Sql, and how to keep all measures in one area.
I learned also what is a "Grain" and how important is proper planning of tables in sql on the beginnings, and avoid problems with
duplicaions later on in Power Bi. I know new terms like "Backend","Frontend","Mockup". I realised how data model should be build, and
how table facts should look (only id's and calculations). I Found out also very helpful internet site to getting matching icons https://www.flaticon.com/search
  =========================================================================================================================================================================================
