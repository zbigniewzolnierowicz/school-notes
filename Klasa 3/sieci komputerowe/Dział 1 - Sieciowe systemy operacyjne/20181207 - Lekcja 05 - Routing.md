# Lekcja 5 - Routing

## Pojęcie routingu

Routing (trasowanie) - jest to wyznaczenie trasy prowadzącej z jednej
sieci do innej. Proces wykorzystywany przez router w celu przekazania
pakietu w kierunku sieci docelowej. Informacje na temat sieci pobierane
są w tablicy routingu.

## Tablice routingu

Tablica routingu składa się z 3 obszarów:

-   Lista interfejsów - informacja na temat kart sieciowych
-   Aktywne trasy - adresy sieci aktywnych
-   Trasy stałe - adresy routingu statycznego

Tylko najlepsze trasy przechowywane są w tablicach routingu FIB
*(Forwarding Information Base)*, podczas gdy inne mogą być przechowywane
w bazach danych RIB *(Routing Information Base)*.

Metryka routing jest wartością używaną przez algorytmy routingu do
określenia, która trasa jest lepsza. Brane są pod uwagę:

-   szerokość pasma (przepustowość)
-   opóźnienie
-   liczba przeskoków (hopów)
-   koszt ścieżki (odległość)
-   obciążenie
-   MTU (wielkość pakietu danych)
-   niezawodność
-   koszt komunikacji (moc tracona).

## Działanie routingu

Router w dużym uproszczeniu cały czas wykonuje następującą pętlę:

-   odbiera pakiet i go dekapsuluje do pakietu IP (warstwy 3),
-   analizuje informacje na temat IP docelowego oraz TTL (Time To Live)
    -   jeśli w tablicy routingu jest wpis o sieci dla adresu docelowego
        z pakietu i TTL \> 1, wtedu przekazuje go na właściwy interfejs
        i zmniejsza wartość TTL o 1
    -   jeśli w tablicy routingu nie ma wpisu dla adresu docelowego z
        pakietu i TTL \> 1, wtedy przekazuje go interfejsem dla trasy
        domyślnej i zmniejsza wartość TTL o 1
    -   jeśli TTL = 1 i adres IP docelowy jest w sieci bezpośrednio
        podłączonej lub jest adresem routera to przekazuje go do
        odpowiedniego interfejsu i zmniejsza TTL o 1, a w przeciwnym
        wypadku usuwa ten pakiet
    -   jeśli TTL = 0 to usuwa pakiet

Protokoły routingu
------------------

Protokoły routingu (routujące, ang. *routing protocols*) używane są do
wymiany informacji o trasach pomiędzy sieciami komputerowymi, co pozwala
na dynamiczną budowę tablic routingu.

Statyczne (tradycyjne) trasowanie jest bardzo proste, bo polega na
wykorzystaniu tylko informacji o następnym "przeskoku" (ang. *hop*).

W trasach statycznych (stałych) podaje się następujące informacje:

-   adres sieci
-   maskę sieciową
-   bramę
-   interfejs
-   metrykę

(polecenie: `route -p add...`)

Protokoły routingu robią dwie proste rzeczy:
-   Mówią światu, kim są sąsiedzi
-   Dowiadują się od sąsiadów jak wygląda świat

Algorytm routingu stanowi podstwę rótungu dynamicznego. Gdy topologia
sieci zmieni się z powodu rozrostu, rekonfiguracji lub awarii sieci,
baza wiedzy o sieci musi również ulec zmianie - odzwierciedlać dokładnie
kształt nowej topologii.

### Podział protokołów routingu ze względu na zakres

-   Wewnętrzne protokoły routingu (zwane również protokołami bramy wewnętrznej - IGP, ang. *Interior Gateway Protocol*) - używane do wymiany informacji o trasach w pojedynczym systemie autonomicznym. Przykłady:
    -   IGRP/EIGRP (Interior Gateway Routing Protocol / Enhanced IGRP)
    -   OSPF (Open Shortest Path First)
    -   RIP (Routing Information Protocol)
    - IS-IS (Intermediate System to Intermediate System)
-   Zewnętrzne protokoły routingu (zwane również protokołami bramy zewnętrznej - EGP, ang. *Exterior Gateway protocol*) - używane do wymiany informacji o trasach pomiędzy różnymi systemami autonomicznymi. Przykłady:
    -   EGP (Exterior Gateway protocol - obecnie przestarzały)
    -   BGP (Border Gateway Protocol - RFC 4271 i 1772).

### Podział protokołów routingu ze względu na działanie

#### Protokoły routingu wektora odległości

Protokoły routingu wektora odległości przekazują okresowe kopie tablic routingu do sąsiedniego routera, nie mają pełnej informacji o odległych routerach, najlepsza ścieżka ustalana jest przez dodawanie do metryki routingu wartości.
Decyzje o wyborze tras podejmowane są na podstawie odległości do poszczególnych sieci lub kosztu związanego z daną trasą. Algorytm Bellmana-Forda.

#### Protokoły routingu stanu łącza

Protokoły routingu stanu łącza - utrzymują złożone bazy danych z informacjami o topologii, mają pełną informację o odległych routerach, najlepsza ścieżka jest obliczana przez każdy router. Budują pełen obraz sieci - w tym informacje o stanie oraz jakości łączy. Algorytm Dijkstry, SPF

Przykłady:

- OSPF (RFC2328)
- IS-IS/Integrated IS-IS (RFC1142)

#### Protokoły hybrydowe

Protokoły hybrydowe posiadają cechy zarówno wektora odległości jak i stanu łącza.

Przykłady:

- EIGRP (Cisco)
