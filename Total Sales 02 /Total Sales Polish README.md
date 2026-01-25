# Tytuł: Total Sales 02
Cel Dashboardu: Zwrócić uwagę na całkowitą sprzedaż produktów firmy. Porównać ją z innymi okresami, oraz ukazać co sprzedaje się najlepiej.
Źródło danych: Publiczna baza danych AdventureWorks2017

# BACKEND
Przygotowanie Widoków w SSMS aby zoptymalizować dane przed transportem do Power Bi 

Widoki wykonane w SSMS:
* DIM CATEGORY (Prosty Widok pobierający kategorie produktów)
* DIM COUNTRY (Zastosowanie "Union ALL" aby połączyć dane dla klientów indywidualnych (personid) oraz sklepów (storeid)
* FACTS ( Połączone tabele Sales order detail oraz sales order header w celu wyodrębnienia potrzebnych
  kluczy id, oraz wartości i dat zamówień. Dodane where soh.status = 5 aby wziąć pod uwagę tylko te sfinalizowane zamówienia żeby uniknąć błędnych danych

# FRONTEND
Model gwiazdy w Power Bi, Grain : 1 wiersz = 1 order.
Tabele wizualizacyje ustawione w relacji one to many 1->* 

Tabele wykonane w Power bi:
*Dim DATE ( kalendarz zrobiony na podstawie przedziału z minimalnej daty z kolumny orderdate do maksymalnej daty)
*KPI MEASURES( Uporządkowane miary Kpi zebyrane w jednym miejscu)

# Wizualizacja:

Power Bi Miary KPI:
* Total Sales (całkowita sprzedaż)
* Total Sales Year-Over-Year% ( miara pokazująca procentową zmianę w porównaniu z okresem z przed roku )
* Average Order Value ( średnia wartość zamóienia)
* Order Count( ilość zamówień)

  Wykorzystanie wizuali:
  * Filtry Roczne oraz miesięczne
  * Line chart ( Pokazujący rysujący się trend sprzedaży całkowitej w porównaniu rocznym, jest wykluczony przez slicer miesięczny)
  * Pie chart ( Pokazuje udział poszczególnych kategorii w całkowitej sprzedaży)
  * Treemap ( Dostarcza informacji w którym z krajów jest kupowane najwięcej przedmiotów)
  * Tabela z filrem TopN ( ukazująca 20 najbardziej dochodowych Przedmiotów w celu przedstawienia co klienci kupują najchętniej)
    
# Czego się nauczyłem?

Podczas tworzenia tego dashboardu, nauczyłem jak się robić Widoki w SQL, Oraz jak porządkować miary stworzone w power Bi. 
Nauczyłem się również tego czym jest GRAIN i jak ważne jest odpowiendnie zaplanowanie tabel w sql na początku rozpoczęcia projektu, aby później
nie było problemu z duplikowaniem wartości przez model danych, a także kilka podstawowych pojęć takich jak:
Backend, Frontend, Mockup.
Zrozumiałem też dokładnie jak działa model danych, oraz to  jak powinny być zbudowane tabele faktów ( tylko same id oraz obliczenia). 
Poznałem również bardzo przydatną stronę która umożliwia import różnych obrazków bezpośrednio do power BI https://www.flaticon.com/search


