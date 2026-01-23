



# Customer Retention Project

<img src="Customer%20Retention.png" align="right" width="400" alt="Dashboard Preview">

## Spis treści
* [Backend](#backend)
* [Frontend](#frontend)
* [Wykorzystane Wizualizacje](#wykorzystane-wizualizacje)
* [Wnioski biznesowe](#wnioski-biznesowe)
* [Co wyniosłem z tego projektu?](#co-wyniosłem-z-tego-projektu)
* [Dodatkowe informacje](#dodatkowe-informacje)

<br clear="right"/>


 Cel Projektu Celem projektu było ukazanie którzy klienci indywidualni robią najrzadziej zakupy w firmie.
 Użyta baza danych : Adventureworks2017

# Backend
Przygotowanie widoków w SQL oraz połączenie imion i nazwisk klientów spójną całość. Dodanie nowego widoku w SQL "fact 2" zawierającej dni pomiędzy ostatnim a przedostatnim zamówieniem klienta.

Połączenie w Power Query tabel "facts" oraz "fact2" w celu dodania kolumny zawierającej ilość dni pomiędzy ostatnim a wcześniejszym zamówieniem do jednej tabeli, po "left outer join" połączony za pomocą stworzonego indeku dla każdego wiersza zamówienia.

Widoki:

- Dim geo ( Tabelka z informacjami odnośnie krajów klientów)
- Dim Individual customers ( Tabelka zawierająca imię i nazwisko każdego z klientów)
- facts ( Tabela zawierające id klienta, daty zamówień oraz wyniki sprzedażowe) główna tabela faktów
- fact2 ( Tabela zawierająca dni pomiędzy ostatnim zamówieniem klienta a przed ostatnim, oraz jego id)

# Frontend
Model gwiazdy w Power Bi 1 grain - 1 zamówienie klienta,

<img src="Customer%20Retention%20Model.png" alt="Model Preview" width="400">


Tabele oraz kolumny  stworzone w Power Bi:

* Tabela Calendar :
- Zawierająca kolumnę z datami od 01.01.2011 do 31.12.2014
- Rok
- Nazwę słowną miesiąca
- Numer miesiąca
- Numer kwartału
- Numer dnia
- Nazwa dnia
- Dzień końca miesiąca dla danej daty

* Zbiór zawierający wszystkie miary wykorzystane w dashboardzie

* Tabela Dim Individual Customers 
zaktualizowana o kolumny:
- ”First order date month” ( kolumnę zawierającą ostatni dzień miesiąca dla daty pierwszego zakupu - potrzebną aby pogrupować dane do analizy Kohorty)
- ”last order date"( Kolumnę z datą ostatniego zrobionego zakupu )

* Tabela Facts zawierająca nowe kolumny:
- ”180 days from Last Order” wyświetlającą datę (01.01.2014) która jest o 180 dni wcześniej od ostatniego zakupu w bazie (30.06.2014).
   Potrzebną aby określić czy klient miał jakieś zamówienie w ciągu ostatnich 180 dni (Stable) lub nie miał żadnego zamówienia w ciągu ostatnich 180 dni (Churned)
- Kolumnę “Churn Status”  Churned/Stable
- Kolumnę “Days_Between_Last_and_previous_order” Pokazującą ilość dni pomiędzy ostatnim a przedostatnim zamówieniem każdego klienta
- ”RFM score” - Kolumnę liczącą całokształt tego ile klient wnosi do firmy na podstawie nadanych punktów dla 3 kategorii  recency + total sales + order amount  ( im większy wynik tym cenniejszy klient)
- Kolumnę “Months after” pokazującą ile miesięcy później dany klient zrobił kolejne zamówienie potrzebną do analizy kohortowej.


# Wykorzystane Wizualizacje

- Tytuł dashboardu
- Slicer spełniający funkcję filtrowania klientów po ich nazwie z opcją wyszukiwania
- Card zawierający informacje o id klienta
- 6x Kpi card zawierających informacje o :
              - Ostatniej dacie zamówienia wybranego klienta
              - Statusie klienta
              - Całkowitej sumie jaką klient musiał wydać z uwzględnieniem podatków oraz kosztem transportu
              - Recency ( dni od ostatniego zamówienia)
              - RFM Score
              - Ilości zamówień klienta
Do kpi ilościowych zostały dodane również ikonki symbolizujące każdy z kpi ze strony https://www.flaticon.com

- Gauge pokazujący procent klientów których całkowita suma zakupu produktów jest mniejsza niż wybranego klienta. Pozwalający ukazać ingerencję zakupową Klienta na tle innych klientów.

- Line and stacked Column Chart - “Sales and order quantity by country” ( przedstawiający jak wygląda ilość zamówień oraz całkowita suma zakupów klientów w poszczególnych krajach) 

- Line Chart - “Customer Base Growth: New vs Active (180 days)” (Na podstawie tego ilu klientów miało kolejne zamówienie w ciągu następnych 180 od danego zamówienia (zielona linia) 
oraz  ilość nowych klientów z pierwszym zamówieniem (czerwona linia)

- Matrix - “Cohort Analysis for new customers in 2013” - Analiza mierzy wskaźnik retencji klientów pozyskanych w miesiącach 2013 roku.
Każdy wiersz reprezentuje grupę klientów, którzy dokonali pierwszego zakupu w danym miesiącu. Kolumny od 1-12 pokazują jaki procent klientów
pozyskanych wcześniej wraca, robiąc ponownie zakupy w firmie. W wizualizacji została użyta heatmapa aby wyszczególnić grupy klientów którzy częściej bądź rzadziej ponawiają zakupy w naszej firmie.


# Wnioski biznesowe 
Wykres "Sales and order quantity by country" Pokazuje że największy wkład mają klienci ze Stanów Zjednoczonych zarówno pod względem ilości zamówień oraz całkowitej zainwestowanej sumy.
Z wykresu można odczytać również że krajem z którego klienci najmniej inwestują w produkty naszej firmy jest Canada oraz krajem z najmniejszą ilością zamówień są Niemcy.

Na podstawie "Customer Base Growth .." u można wywnioskować że w roku 2013 nastąpiło znaczne wzmocnienie trendu wzrostowego dla ilości 
nowych klientów oraz “starzy klienci” zaczęli częściej robić zakupy - o czym świadczy linia zielona.

Na podstawie analizy Cohortowej można wyczytać że klienci robiący zakupy w miesiącach: Styczeń - Maj, aktywniej wracają w listopadzie
oraz w grudniu, świadczą o tym większe wartości jak np 22% w grudniu dla klientów z lutego. Można przyjąć zamówienie że klienci
robią ponowne zakupy średnio co 7 - 8 miesięcy.


# Co wyniosłem z tego projektu
Podczas robienia tego dashboardu nauczyłem się korzystać z wizualizacji takich jak matrix, gauge(tachometer), cards+. 
Dowiedziałem się również jak pozyskiwać nowe wizualizacje, gdy te wbudowane systemowo w Power Bi nie są wystarczające. 
Na potrzeby koloryzacji ikon, nauczyłem się również korzystać z programu Fffinity, dzięki temu będę mógł wizualizować ikony w dowolny sposób, a potem je eksportować do Power Bi.
Nauczyłem się dobierania odpowiedniej palety kolorów, do której posłużyła mi strona:https://coolors.co.
Nauczyłem się również nowych funkcji w Power Bi: 
“Remove filters” która działa bardzo podobnie do funkcji “all(tabela)” 
“eomonth” która umożliwia wskazanie ostatniej daty miesiąca
nauczyłem się  że co oznaczają symbole "&&" oraz "||".
Najtrudniejszą rzeczą z którą przyszło mi się mierzyć podczas tego dashboardu, jest niewątpliwie analiza kohortowa, którą robiłem pierwszy raz. Dowiedziałem się również że można zmieniać rozmiar dashboardu.

# Dodatkowe informacje
RFM score punktacja:

Total Sales points: 

x > 5000 = 3 punkty
x > 1000 = 2 punkty
x >= 100 = 1 punkt
x < 100 = 0 punktów

Recency points

x > 0 lub x<90 = 3 punkty  Są dwa warunki ponieważ jest dużo wyników 0 które oznaczają że klient nie zrobił drugiego zamówienia. Na tej podstawie punkty zostałyby rozdysponowane nieprawidłowo
x >= 90 = 2 punkty
x > 180 = 1 punkt
x > 360 = 0 punktów

Order quantity points

x > 8 =3 punkty
x > 4 =2 punkty
x > 2 = 1 punkt
x < 2 = 0 punktów

