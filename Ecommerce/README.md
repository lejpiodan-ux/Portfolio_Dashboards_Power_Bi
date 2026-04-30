# Tytuł: Ecommerce
<p>
  <img src="https://github.com/lejpiodan-ux/Portfolio_Dashboards_Power_Bi/blob/main/Ecommerce/%20Photo%20first%20chart.png" width="60%">
</p>

# Spis Treści

1. [Cel projektu](#cel)
2. [Backend](#backend)
3. [Frontend](#frontend)
4. [Czego się nauczyłem?](#czego-się-nauczyłem)
   
# Cel

Celem projektu było przeprowadzenie całej analizy end to end na podstawie danych ze strony: https://www.kaggle.com/datasets/kandeelai22/messy-e-commerce-sales-dataset

### Pipeline
1. Pobranie datasetu z internetu 
2. Data Cleaning w Pythonie
3. Eksport wybranych tabel do excela
5. SQL (obróbka widoków)
6. Import do Power BI
7. Poprawa błędów w Power Query
8. Przekształcenie danych w wizualizacje
9. Publikacja w Power BI Service

 

# Backend

### Python
* Pobranie datasetu ze strony kaggle
* [Tutaj](https://github.com/lejpiodan-ux/Portfolio_Dashboards_Power_Bi/blob/main/Ecommerce/Python%20Data%20Cleaning.py) znajduje się cały kod napisany w Jupyter notebook w celu "wyczyszczenia danych", razem z opisem wykonanych przeze mnie czynności.


### Excel
Excel posłużył mi głownie do przejrzenia tabel, oraz szybkiego zweryfikowania, czy w danych znajdują się błędy. 
Napotkane problemy: W niektórych wierszach w kolumnie "Category" brakowało nazwy.
Rozwiązanie? Użyłem kolumny warunkowej w Power Query, aby dopasować nazwy kategorii wedle odpowiadających im produktom

### SQL
* [Tutaj](https://github.com/lejpiodan-ux/Portfolio_Dashboards_Power_Bi/blob/main/Ecommerce/SQL%20Script.sql) znajduje się skrypt SQL, w którym przygotowałem logikę widoku obliczającego dynamikę sprzedaży miesiąc do miesiąca (MoM).
### Power Bi
Dashboard został zbudowany według:
* grain transakcyjny - odpowiadający 1 transakcji
* grain zagregowany - odpowiadający 1 miesiącowi
  
Policzenie konkretnych wystąpień w kolumach poprzez użycie funkcji  "calculate" + "counta"
Stworzenie osobnego zbioru dla miar użytych w wizualizacji
Wyodrębnienie roku

# Frontend
### Kpi
* Quantity - ilość transakcji
* Average Order Value - średnia zamówienia (średnia z kolumny "New_Total")

# Wykorzystane wizuale  
* Waterfall Chart "Cumulative price growth over years" + "Tooltipy",które się pokazują po najechaniu na daną wartość na wykresie
* Obszar zawierający informacje o "Ship Status"
* Stacked Column Chart oraz Threemap jako  "Widoki" dla "Total prices per category"
* Stacked Bar Chart "Total prices for each product"

 # Power Bi
### Końcowe Statystyki
* Liczba miar: 6
* Liczba Bookmarków: 2
* Liczba stron Dashboardu: 1
* Liczba stron Power Bi: 2
* Liczba Kpi: 2
* Liczba Wizualizacji: 5
* Filtry: List slicer "Choose Category"
* Kolor tła: #55A973
* Bazując na kolorze: #18421E



# Czego się nauczyłem?
Podczas robienia tego projektu, nauczyłem się robić efekt "Highlightowania" Elementów, na które najeżdza się myszką, jest to zauważalne podczas zmieniania filtrów Kategorii w dashboardzie.
Poznałem również funkcjonalność "Bookmarków" oraz szereg ich zastosowań. Wykorzystałem swoje umiejętności, aby przekształcić "Brudne dane" w pełni czytelni Dashboard

# Dodatkowe informacje
 Dashboard powstał w wyniku "ćwiczeń Data Wranglingu" , nie miał na celu wyodrębniać szczególnych wniosków biznesowych.
 Wykorzystane Programy oraz strony internetowe:

 Programy:
 * Python
 * Excel
 * SQL SSMS
 * Power Query
 * Power BI
 * Affinity (zmiana kolorystyki ikon)

 Strony Internetowe:
* Dataset: https://www.kaggle.com/datasets/kandeelai22/messy-e-commerce-sales-dataset
* Kolorystyka: https://coolors.co
* Zapisywanie Grafiki: https://postimages.org
   
 
 
###### Autor: Piotr Leja
