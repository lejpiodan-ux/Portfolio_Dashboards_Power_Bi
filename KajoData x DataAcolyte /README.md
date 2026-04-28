# Tytuł: KajoData x DataAcolyte

# Power Bi
### Początkowe Statystyki 
* Udostępnione materiały: Data transakcji, Klient, Kwota, 
* Liczba Kolumn : 3

### Końcowe statystyki
* Liczba kolumn: 19
* Liczba miar: 16
* Liczba stron : 5
* Liczba Kpi: 5
* Liczba Wizualizacji: 7
* Nazwa Czcionki: Helvetica Neue Light
* Kolor czcionki: #78FFD6
* Kolor tła wykresów: #185B67
* Bazując na kolorze: #023C40

# Wizualizacja:

### Kpi

* Łączna liczba zamówień
* Całkowity przychód
* Średni wskaźnik retencji
* Unikatowi Klienci
* Średnia liczba zamówień
# Wykorzystanie wizuali:

***Napływ nowych Klientów*** ( Pokazujący liczbe nowo pozyskanych klientów w obrębie jednego miesiąca )
**Średni czas powrotu klienta** ( Liczba dni, która musi upłynąć, aby klient zrobił kolejne zamówienie )
**Przychód miesięczny** ( Całkowity przychód w ujęciu miesięcznym )

**Ewolucja średniej wartości zamówienia**
Ukazanie średniej wartośći zamówienia w każym oddzielnym miesiącu, oraz średniej skumulowanej wartości zamówienia od 1 zamówienia do 4227 zamówienia.Pionowe słupki Wyznaczają przedział ufności/odchylenie standardowe dla każdego miesiąca.
Długie słupki: Sygnalizują dużą zmienność (niestabilne koszyki zakupowe, zamówień o wysokich ekstremalnych wartościach.)
Krótkie słupki: Oznaczają stabilną bazę klientów i przewidywalne przychody.

**Segmentacja bazy klientów pod kątem aktywności** ( Podzielenie klientów względem ich całkowitej ilości zamówień)

**Dynamika zmian w strukturze lojalnosci klientów**
Wykres pozwala zaobserwować, czy wraz z upływem czasu "warstwy" klientów powracających (np. segmenty 3-4 lub 5-10 zamówień) rosną. Zastosowany skumulowany wykres obszarowy pozwala  na błyskawiczną ocenę zdrowia biznesu: im szersze pasma oznaczające dużą liczbę zamówień (>5 zam), tym silniejsza retencja w danym okresie.

**Cohorta**
Zilustrowanie jaki procent klientów "wraca" robiąc kolejne zakupy. Klienci zostali pdodzieleni na grupy (cohorty) według miesiąca w którym zrobili swoje pierwsze zamówienie, a następnie została zliczona iość [%]  klientów, która ponowiła zamówienie po 1,2,3... miesiącu. Pozwala to precyzyjnie śledzić ich lojalność oraz moment, w którym przestają korzystać z usług firmy.

# Czego się nauczyłem?
Nauczyłem się lepiej wykorzystywać UI/UX design, poprzez dodanie gradientu w większej części mojego projektu, poprzez import obrazków .svg z programu PowerPoint. Nauczyłem się ustawiania nawigacji stron w panelu bocznym, oraz podszkoliłem moją wiedzę z możliwości wykorzystania Bookmarków, szczególnie na stronie "Wnioski i Przemyślenia", gdzie każdy z bookmarków odpowiada za możliwość rozsunięcia/zsunięcia odpowiedniego akapitu z podsumowaniem. Nauczyłem się korzystać z możliwości "error barów", które w bardzo ciekawy sposób obrazują odchylenie standardowe w Ewolucji śedniej wartośći zamówienia. Podszkoliłem, również moje umiejętności wstawiania "tooltipów" (cohorta, oraz znacznki informacyjne w Analizie behawioralnej). Małą, ale bardzo pomocną rzeczą jaką się nauczyłem, było wyłączenie opcji auto date time w ustawieniach tego pliku, co pozwoliło mi na wyświetlenie wszystkich miesięcy cohorty po kolei w wersji polskiej, bez podziału na lata.


# Pozostałe informacje

### Znaki informacyjne na stronie "Analiza Behawioralna"
##### Stały Klient:
Stały klient to klient, który zrobił przynajmniej 1 zamówienie w ciągu ostatnich 180 dni, oraz co najmniej 1 dodatkowe zamówienie w przeciągu następnych 180 dni.
##### Wynik:
Została policzona średnia z czasu pomiędzy zamówieniami dla pojedynczego klienta. Proces został powtórzony dla każdego unikatowego klienta, następnie została wyciągnięta średnia z tych wszystkich wyników. 



### Wnioski i Przemyślenia:

##### 1. Dynamika Przychodów
Analiza przychodu w zestawieniu z liczbą klientów oraz wartością koszyka sugeruje, że wzrost biznesu jest w dużej mierze napędzany skalą (liczbą zamówień i klientów), a nie istotnym wzrostem średniej wartości zamówienia, co oznacza, że obecny model wzrostu może być silnie uzależniony od ciągłej akwizycji nowych użytkowników, a tym samym mniej efektywny kosztowo w dłuższym okresie, jeśli nie zostanie uzupełniony o działania zwiększające wartość istniejącej bazy klientów.

##### 2. Cykl Zakupowy
Jednocześnie zaobserwowano wyraźny, powtarzalny cykl zakupowy wynoszący średnio 30–40 dni, co wskazuje, że zachowania klientów mają charakter regularny i przewidywalny, a tym samym umożliwiają wdrożenie cyklicznych, zautomatyzowanych działań marketingowych  w optymalnych momentach, zanim klient wypadnie z cyklu zakupowego, co może znacząco zwiększyć prawdopodobieństwo ponownego zakupu.


##### 3. Struktura wydatków
Choć średnia wartość zamówienia wykazuje stabilny trend wzrostowy, szczegółowa analiza rozrzutu kwot ujawnia istotne ryzyko strukturalne. Ogólny wzrost wyniku jest w dużej mierze generowany przez wąską grupę klientów premium, podczas gdy wydatki większości bazy pozostają na niskim poziomie. Taka sytuacja uzależnia kondycję finansową firmy od garstki najbogatszych odbiorców, co czyni przychody podatnymi na nagłe wahania.


##### 4. Retencja Kohortowa
Analiza kohortowa wykazała również, że nowsze grupy klientów osiągają niższe poziomy retencji w porównaniu do wcześniejszych kohort, co może sugerować pogorszenie jakości pozyskiwanego ruchu, zmiany w strategii marketingowej, mniej trafne targetowanie lub potencjalne różnice w doświadczeniu użytkownika (np. onboarding, oferta, ceny), a tym samym wskazuje na potrzebę dokładniejszej analizy kanałów akwizycji oraz ich wpływu na długoterminową wartość klienta.


##### 5. Aktywizacja klientów
Istotnym wnioskiem jest także struktura bazy klientów, w której znaczący udział stanowią użytkownicy dokonujący jedynie jednego zakupu, co podkreśla, że głównym wyzwaniem biznesowym nie jest wyłącznie pozyskiwanie nowych klientów, lecz przede wszystkim ich aktywizacja i przekształcenie w klientów powracających, ponieważ przejście z pierwszego do drugiego zamówienia stanowi jeden z najważniejszych momentów w całym cyklu życia klienta.


##### 6. Lojalność długoterminowa
Dane ujawniają wyraźny spadek lojalności po około pół roku od pierwszego zakupu. Ten 5-6 miesięczny cykl wydaje się być decydujący dla utrzymania klienta. Z analitycznego punktu widzenia to optymalny moment na wdrożenie ofert specjalnych lub przypomnień, mających na celu wydłużenie czasu życia klienta w systemie.


##### 7. Stabilność biznesowa
Podsumowując, przeprowadzona analiza wskazuje, że kluczowym obszarem rozwoju biznesu jest poprawa retencji klientów - szczególnie w pierwszych miesiącach po ich pozyskaniu oraz w okresie od 3 do 6 miesięcy od pierwszego zakupu - a także zwiększenie częstotliwości zakupów i efektywne wykorzystanie przewidywalnego cyklu zakupowego, przy jednoczesnym zwróceniu uwagi na jakość pozyskiwanych klientów, co łącznie może znacząco wpłynąć na stabilność oraz długoterminową rentowność modelu biznesowego.
