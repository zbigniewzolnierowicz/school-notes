# Lekcja 2 - Pojęcie baz danych, podstawowe definicje

**Baza danych** *(ang. database)* to abstrakcyjne, informatyczne przedstawienie wybranego fragmentu rzeczywistości, zwangeo mini światem. Fragment ten określamy mianem **obszaru analizy** *(ang. universe of discourse)*.

**Baza danych** jest to uporządkowany zbiór danych z pewnej dziedziny tematycznej, zorganizowany w sposób ułatwiający dostęp do danych i operowanie nimi wg. określonych kryteriów.

W przypadku szkoły obszar analizy może obejmować między innymi przedmioty oferowane uczniom i uczniów zaliczających te przedmioty - są to tzw. **rzeczy istotne** dla szkoły.

Rzeczy istotne nazywamy **klasami** lub **encjami** *(ang. entity)*

Klasy mogą być powiązane, czyli którzy uczniowie jakie przedmioty zaliczają.

Klasy mogą mieć **właściwości** lub **atrybuty** - uczniowie mają nazwiska, imiona, itp.

Klasy, atrybuty, związki muszą mieć jakąś reprezentację w bazie danych, czyli innymi słowy baza musi być zaprojektowana.

## Cechy charakterystyczne bazy danych

**Trwałość danych** - dane w bazie danych traktowane są jako *trwałe*, to znaczy, że mogą być przechowywane w pamięci masowej przez pewien czas.

**Współdzielenie danych** - dane przechowywane w bazie danych mogą być używane przez wiele osób naraz.

**Niezależność danych** - dane są niezależne od procesów, które używają tych danych.

**Integralność danych** - baza danych ma w dokładny sposób odzwierciedlać obszar analizy (zgodność z rzeczywistością). jeśli modelowany fragment rzeczywistości ulega zmianie, baza danych również musi się zmienić.

**Bezpieczeństwo danych** - polega głównie na wydzieleniu zakresu danych do których mają dostęp poszczególni użytkownicy (określanie praw dostępu).

**Integracja danych** - baza danych powinna być zbiorem danych nie mającym niepotrzebnue powtarzających się lub zbędnych danych, czyli nie może być redundancji danych.

## Część intensjonalna i ekstensjonalna

Baza danych składa się z dwóch części: intensjonalnej i ekstensjonalnej.

* **Część intensjonalna (schemat bazy danych)** - to zbiór definicji opisujących strukturę w bazie danych
* **Część ekstensjonalna (zawartość bazy danych)** - to łączny zbiór danych w bazie danych.

Tworzenie schematu bazy danych nazywamy projektowaniem bazy danych.

| Część intensjonalna                                                                                         | Część ekstensjonalna                                   |
| ----------------------------------------------------------------------------------------------------------- | ------------------------------------------------------ |
| Schemat: szkoła                                                                                             | Zawartość: szkoła                                      |
| Klasy: *przedmioty* - kursy prowadzone przez instytucję w semestrze; *uczniowie* - osoby zaliczające moduły | Przedmioty: Systemy baz danych, wstęp do programowania |
| Związki: uczniowie zaliczają przedmioty                                                                     | Uczniowie: Jan Kowalski; Marcin Maj; Anna Nowak        |
| Atrybuty: przedmioty mają nazwy; Uczniowie mają nazwiska                                                    | Zaliczają: Jan Kowalski zalicza systemy baz danych     |

## Rodzaje baz danych

### Operacyjna baza danych

**Operacyjne** bazy danych - do przetwarzania transakcji internetowych **(OLTP)** w sytuacjach, kiedy istnieje potrzeba zbierania, modyfikacji i utrzymania danych każdego dnia.

Dane przechowywane w operacyjnej bazie danych są dynamiczne, co znaczy, że wciąż się zmieniają i zawsze odzwierciedlają aktualne informacje.

Organizacje takie jak sklepy, wytwórnie i wydawnictwa korzystają z operacyjnych baz danych, ponieważ ich dane ciągle się zmieniają.

### Analityczna baza danych

**Analityczne** bazy danych są głównie wykorzystywane przy analitycznym przetwarzaniu online **(OLAP)** w sytuacjach, kiedy istnieje potrzeba przechowywania i śledzenia danych historycznych i zależnych od czasu.

Analityczną bazę danych wykorzystujemy, gdy potrzebujemy prześledzić trendy, przejrzeć dane statystyczne z długiego zakresu czasu oraz stworzyć taktyczne lub strategiczne projekcje biznesowe.

Ten typ bazy danych przechowue dane statyczne, co oznacza że dane te nie zmieniają się nigdy (lub bardzo rzadko).

## System Zarządzania Bazą Danych

**S**ystem **Z**arządzania **B**azą **D**anych SZBD *(ang. DBMS - **D**ata**b**ase **M**anagement **S**ystem)* jest to oprogramowanie, które pozwala użytkownikowi definiować, tworzyć, utrzymywać bazę danych jak również kontrolować dostęp do bazy danych.

SZBD to oprogramowanie, które kontaktuje się z aplikacją użytkownika i z bazą danych. To właśnie w specjalnym katalogu SZBD przechowywana jest struktura plików z danymi.

## System baz danych

System zarządzania bazą danych i bazę danych będziemy nazywać **systemem baz danych**.

## Użytkownicy baz danych

* użytkownicy końcowi
* programiści aplikacji
* programiści baz danych
* projektanci baz danych
* analitycy systemowi
* administratorzy baz danych

## Ćwiczenie

Zaprojektuj schemat bazy danych meczu piłkarskiego

### Intensjonalna

Encje:

* drużyny
* piłkarze
* kibice

Atrybuty:

* drużyny mają nazwę, sponsora i kod
* piłkarze mają nazwisko, imię i pensję
* kibice mają miejsce, imię i nazwisko

TODO: Dodać po 2 atrybuty

Związki:

* kibice kibicują wybranej drużynie
* piłkarze grają dla drużyny

<!-- ### Ekstensjonalna

Drużyny:

* Generic United
* FC Noname

Piłkarze:

* Piłkokopek
* Kopiec
* Nowak
* Kowalski

Kibice:

* Miejsce 928
* Miejsce 917
* Miejsce 666
* Miejsce 777

Związki:

* Kibic - drużyna
    * Miejsce 666 i 928 kibicują Generic United
    * Miejsce 917 i 777 kibicują FC Noname
* Piłkarz - drużyna
    * Piłkokopek i Nowak grają dla Generic United
    * Kowalski i Kopiec grają dla FC Noname. -->