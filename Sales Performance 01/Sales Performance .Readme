Opis działania Dashboardu Sales Performance Dashboard z Ogólnodostępnej bazy danych "Northwind"

Dashboard ma za zadanie odpowiedzieć na kluczowe pytania:
  * Jak wygląda aktualna sprzedaż i jej dynamika
  * Które produkty i kategorie przynoszą największe przychody
  * Jacy pracownicy generują najwięcej zamówień
  * Jak wygląda terminowość dostaw 
  * Jak zmieniają się wyniki miesiąc do miesiąca
  * Czy klienci wracają do firmy
  * Jak szybko realizowane są zamówienia

Dashboard zawiera: 2 slicery dla filtrowania miesiąca oraz roku, 7 miar KPI, wykres liniowy MOM, wykres kolumnowy "TOP 5 categories by Total Sales", "Top 5 employees by Total order Count"

KPI Zawiera kluczowe miary:
  ` Revenue`  łączna wartość sprzedaży
  ` Average Order Value (AOV)`  Średnia wartość jednego zamówienia
  ` Gross Margin % ` Marża Brutto %
  ` Gross Profit ` Zysk Brutto
  ` On-Time Delivery (OTD)`  % Zamówień dostarczonych na czas
  ` Customer Retention % ` Zdolność firmy do utrzymania klientów
  ` Average Lead Time Days` (Avg. LTD) - Średni czas realizacji dostaw


`Month-over-Month` ukazany za pomocą wykresu liniowego, który przedstawia:
  aktualną sprzedaż miesięczną
  dynamikę miesiąc-do-miesiąca
  zmianę w trendzie po wybraniu odpowiedniego filtra dla slicera Year
Wykres `MoM` jest niezależny od slicera `Month `(celowo, aby zachować pełną analizę trendów).

`Top 5 Categories by Total Sales`
  Wykres kolumnowy pokazujący, które kategorie produktów są najbardziej dochodowe.
  Na wykres jest nałożony filtr` Top N` By` Total Sales`, po to aby filtrowane było tylko 5 najlepszych wyników sprzedażowych dla 5 najlepszych kategorii.
  Wykres objęty jest działaniem slicerów `Month` oraz `Year` aby móc szybko zweryfikować najlepsze wyniki sprzedażowe dla danego miesiąca oraz roku

 Tabela przestawna "Top 5 Employees by Total Order Count" zawierajaca kolumny:
  -` Employee Name`
  -` Total Sales`
  -` Order Count`
  -` Monthly Order Change % `
  -` Total Order Count`
Pozwala łatwo zweryfikować 5 Najlepszych Sprzedawców pod względem ilości zamówień. Kolumna `Order count` zlicza ilość zamówień dla podanego miesiąca oraz roku. 
Kolumna `Monthly Order Change` pokazuje kolorystyczną zmianę % względem ilości zamówień z poprzednim miesiącem. Kolumna `Total Order Count` przedstawia natomiast całkowitą ilość zamówień dla każdego pracownika od początku jego istnienia w firmie.
Wykres jest objęty filtrem `TOP N` jako Top 5 dla kolumny "Employee Name".

Wszystkie miary zostały zabezpieczone przed wartościami `BLANK` dzięki zastosowaniu funkcji `COALESCE`, aby poprawnie działały pod różnymi filtrami (`Month`, `Year`).
Na potrzeby działania funkci `Time Intelligence`została zrobiona przeze mnie nowa tabela "Calendar" Która daje możliwość swobodnego działania i ustawiania kontekstu na datach.
Stworzyłem nową kolumnę w tabeli "Order Details" pod nazwą "Standard Cost" aby móc obliczyć wartość dla miary "Gross Profit". `Standard Cost` = `Unit Price` * 0,5
Wszystkie Wykresy oraz miary KPI mają wyłączoną opcje filtrowania innych wizualizacji, aby odczytywanie danych z wykresu było mniej chaotyczne

Dashboard zrobiony na potrzeby portfolio Analityka danych.
Autor: Piotr Leja

