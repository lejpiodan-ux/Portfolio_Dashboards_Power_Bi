# Tytuł: Ecommerce

# Cel

Celem projektu było przeprowadzenie całej analizy end to end .
Proces ten wyglądał następująco:
1. Pobranie datasetu z internetu 
2. Data Cleaning w Pythonie
3. Eksport wybranych tabel do excela
5. SQL (obróbka widoków)
6. Import do Power Bi
7. Poprawa błędów w power Query
8. Przekształcenie danych w wizualizacje
9. Publikacja w Power BI Service

 
# Spis Treści

# Backend

### Python
* Pobranie datasetu ze strony kaggle
* Strona datasetu: https://www.kaggle.com/datasets/kandeelai22/messy-e-commerce-sales-dataset
* Tutaj znajduje się cały kod napisany w Jupyter notebook w celu "wyczyszczenia danych", razem z opisem wykonanych przeze mnie czynności.


### Excel
Excel posłużył mi głownie do przejrzenia tabel, oraz szybkiego zweryfikowania, czy w danych znajdują się błędy. 
Napotkane problemy: W niektórych wierszach w kolumnie "Category" brakowało nazwy.
Rozwiązanie? Użyłem kolumny warunkowej w Power Query, aby dopasować nazwy kategorii wedle odpowiadających im produktom

### SQL

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

# Wykorzystane Wizuale  
* Waterfall Chart "Cumulative price growth over years" + "Tooltipy",które się pokazują po najechaniu na daną wartość na wykresie
* Obszar zawierający informacje o "Ship Status"
* Stacked Column Chart oraz Threemap jako  "Widoki" dla "Total prices per category"
* 

# Co wyniosłem z tego projektu ?

