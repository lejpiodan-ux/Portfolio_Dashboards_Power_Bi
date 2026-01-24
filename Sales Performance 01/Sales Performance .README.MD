# Polish
## Tytuł: Sales Performance 01
Użyta Baza danych: Northwind

 ## Opis Problemu
   Dashboard ma za zadanie odpowiedzieć na kluczowe pytania:
   * Jak wygląda aktualna sprzedaż i jej dynamika
   * Które produkty i kategorie przynoszą największe przychody
   * Jacy pracownicy generują najwięcej zamówień
   * Jak wygląda terminowość dostaw 
   * Jak zmieniają się wyniki miesiąc do miesiąca
   * Czy klienci wracają do firmy
   * Jak szybko realizowane są zamówienia


## Wizualizacje

   ##### Dashboard zawiera: 2 slicery dla filtrowania miesiąca oraz roku
   ##### 7 miar KPI,
   ##### Wykres liniowy MOM
   ##### Wykres kolumnowy "TOP 5 categories by Total Sales"
   ##### Tabele "Top 5 employees by Total order Count"

### KPI Kluczowe wskaźniki efektywności
   KPI Zawiera kluczowe miary:
       ##### Revenue  łączna wartość sprzedaży
       ##### Average Order Value (AOV)  Średnia wartość jednego zamówienia
       ##### Gross Margin %  Marża Brutto %
       ##### Gross Profit  Zysk Brutto
       ##### On-Time Delivery (OTD) % Zamówień dostarczonych na czas
       ##### Customer Retention %  Zdolność firmy do utrzymania klientów
       ##### Average Lead Time Days (Avg. LTD) - Średni czas realizacji dostaw

### Diagramy i reszta wizualizacji

### Month-over-Month ukazany za pomocą wykresu liniowego, który przedstawia:
 ##### aktualną sprzedaż miesięczną
 ##### dynamikę miesiąc-do-miesiąca
 ##### zmianę w trendzie po wybraniu odpowiedniego filtra dla slicera Year
Wykres "MoM" jest niezależny od slicera "Month".

### "Top 5 Categories by Total Sales`

   Wykres kolumnowy pokazujący, które kategorie produktów są najbardziej dochodowe. Na wykres jest nałożony filtr "Top N"      By "Total Sales", po to aby filtrowane było tylko 5 najlepszych wyników  sprzedażowych dla 5 najlepszych kategorii.
   Wykres objęty jest działaniem slicerów "Month" oraz "Year" aby móc szybko zweryfikować najlepsze wyniki sprzedażowe dla     danego miesiąca oraz roku

 ### "Top 5 Employees by Total Order Count" 
   Jest to tabela zawierajaca kolumny:
       ##### Employee Name
       ##### Employee Name
       ##### Total Sales
       ##### Order Count
       ##### Monthly Order Change % 
       ##### Total Order Count

   Pozwala łatwo zweryfikować 5 Najlepszych Sprzedawców pod względem ilości zamówień. Kolumna "Order count"zlicza ilość        zamówień dla podanego miesiąca oraz roku. 
   Kolumna "Monthly Order Change" pokazuje kolorystyczną zmianę % względem ilości zamówień z poprzednim miesiącem. Kolumna     "Total Order Count" przedstawia natomiast całkowitą ilość zamówień dla każdego pracownika od początku jego istnienia w      firmie.
   Wykres jest objęty filtrem "TOP N" jako Top 5 dla kolumny "Employee Name".

## Informacje dodatkowe

   Wszystkie miary zostały zabezpieczone przed wartościami "BLANK" dzięki zastosowaniu funkcji "COALESCE", aby poprawnie       działały pod różnymi filtrami ("Month", "Year").
   Na potrzeby działania funkci "Time Intelligence" została zrobiona przeze mnie nowa tabela "Calendar" Która daje             możliwość swobodnego działania i ustawiania kontekstu na datach.
   Stworzyłem nową kolumnę w tabeli "Order Details" pod nazwą "Standard Cost" aby móc obliczyć wartość dla miary "Gross        Profit". "Standard Cost" = "Unit Price" * 0,5
   Wszystkie Wykresy oraz miary KPI mają wyłączoną opcje filtrowania innych wizualizacji, aby odczytywanie danych z wykresu    było mniej chaotyczne

Dashboard zrobiony na potrzeby portfolio Analityka danych.
Autor: Piotr Leja


# English
## Title Sales Performance 01
Used Database: Northwind

   ## Problem Description
      The Dashboard is designed to answer key questions:
      ##### What is current sales and its dynamics
      ##### Which products and categories are generating best incomes
      ##### Which employee are generating the highest number of orders
      ##### What does on-time delivery look like?
      ##### What is the change of sales month over month
      ##### Are customers coming back ?
      ##### How fast orders are done

## Visualizations

   Dashboard contains:
     ##### 2 Slicers (Month and Year)
     ##### 7 KPI card measures
     ##### Line chart month-over-month
     ##### Column bar chart "Top 5 Categories by Total Sales
     ##### Table "Top 5 employee by Total Order Count"

### KPI Cards

     ##### Revenue - Total Sales
     ##### Average Order Value - Average value of single order
     ##### Gross Margin % - Gross Margin %
     ##### Gross Profit - Gross profit
     ##### On-Time-Delivery  percent of orders delivered on time
     ##### Customer Retention - Company Capability to retain customers
     ##### Average Lead Time Days - Average time of delivery realization

### Diagrams and Charts

   ### Month-over-Month
   Showed by line chart to show monthly sales, dynamics in that period of time and 
   change in trend, after filtering by "Year" slicer
   Chart MOM is independent from slicer "Month". 

### Top 5 categories by Total Sales
   Returns which categories are best selling in profit.
   In chart area also works filter "TOP N" by "Total Sales". The reason is to return best 5 scores for 5 best categories
   Chart is integrated with slicers "Month" and "year", to quickly verify the best sales results for individual month and      year.
   
### Top 5 employee by Total Order Count
   Is containing below columns:
     ##### Employee name
     ##### Total Sales
     ##### Order Count
     ##### Monthly Order Change %
     ##### Total Order COUNT
   Let to fast check 5 best sellers by number of orders. 
   Colum Monthly Order change presents coloristic percent change in reference to number of orders in the previous month. 
   Column Total Order Count presents whole quantity of orders for each employee from since the beginning of its existence      in the company. Chart is working with filter Top N as TOP 5 for column " Employee name"

## Info

   All measures use the COALESCE function to avoid BLANK values, ensuring correct results under different filters.

   For Time Intelligence to work properly, I created a new Calendar table. This table allows flexible work with dates and      makes it easier to control the date context.

   I created a new column in the Order Details table called Standard Cost to calculate the Gross Profit measure.
   Standard Cost = Unit Price * 0.5

   All charts and KPI measures have the option to filter other visualizations turned off, so reading data from the charts      is clearer and less chaotic.

Dashboard made by Piotr leja
 




