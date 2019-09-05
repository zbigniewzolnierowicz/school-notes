# Lekcja 7 - Model relacyjny - charakterystyka elementów

## Zawody

Chcemy zbierać informacje na temat wyników uzyskanych przez uczniów wybranej szkoły w międzyszkolnych zawodach lekkoatletycznych:

- Imię i nazwisko zawodnika
- Numer startowy
- Wyniki
  - bieg
  - skok w dal
  - rzut oszczepem
- Nazwisko opiekuna
- Kategoria wiekowa

## Struktura danych na przykładzie tabeli Zawody

| Numer startowy | Imię  | Nazwisko | Kategoria | Opiekun | Bieg    | Skok   | Rzut  |
| -------------- | ----- | -------- | :-------: | :-----: | :-----: | :----: | :---: |
| 1              | Jan   | Kowalski | 1         | 2       | 11.4121 | 6.2331 | 32.12 |
| 2              | Piotr | Kola     | 1         | 3       | 11.39   | 5.92   | 37.00 |

## Model relacyjny - podstawowe pojęcia

Każda z relacji ma _atrybuty_ (kolumny) opatrzone nazwami. Atrybuty te mają zdefiniowane _dziedziny_, czyli zbiór dopuszczalnych wartości, np. w atrybucie płeć relacji personel mogą wystąpić tylko wartości M lub K. _Pojęcie dziedziny jest bardzo istotne, gdyż pomaga użytkownikowi zdefiniować, niezależnie od relacji, znaczenie atrybutu.

### Schemat tabeli

Nazwa tabeli wraz z listą nazw kolumn (atrybutów) jest **schematem tabel** _(ang. table schema)_.

Przykładowy opis schematu:

>**Zawody** _(**numer_startowy**, imie, nazwisko, kategoria, klasa, opiekun, bieg, rzut, skok)_

- Konwencja nazewnictwa
  - Tabele z dużej litery
  - atrybuty z małej litery
  - Nazwy tabel są rzeczownikami w liczbie mnogiej
  - W zapisie tabel nie stosujemy polskich liter diaktrycznych

Dla poszczególnych atrybutów łatwo możemy określić typy danych.

- numer_startowy - integer
- imie - char
- nazwisko - char

>**Zawody** _(**numer_startowy**: integer, imie: char, nazwisko: char, kategoria: integer, klasa: integer, opiekun: integer, bieg: time, rzut: float, skok: float)_

## Schemat tabeli "Uczniowie klasy 3D"

**Nazwa tabeli**: "Uczniowie klasy 3D"

>**Uczniowie** _(**numer_z_dziennika**, imie: string, nazwisko: string, plec: char, grupa_ang: int, grupa_jez: string, religia: boolean, etyka: boolean, srednia: float, data_urodzenia: date, miejsce_urodzenia: string, pesel: int)_

| Numer z dziennika | Imię     | Nazwisko     | Płeć  | Grupa języka angielskiego | Grupa językowa | Czy chodzi na religię? | Czy chodzi na etykę? | Data urodzenia | Miejsce urodzenia | PESEL      |
| ----------------- | -------- | ------------ | :---: | :-----------------------: | -------------- | ---------------------- | -------------------- | -------------- | ----------------- | ---------- |
| 30                | Zbigniew | Żołnierowicz | M     | 17                        | Hiszpański     | Nie                    | Tak                  | 03-11-2000     | Białogard         | 00310***** |

## Schemat tabeli komisu

>**Komis** _(**tablica_rejestracyjna**: string, przebieg: float, marka: string, model: string, data_produkcji: date, pojemosc_zbiornika: float, czy_uzywane: boolean, moc: int, kolor: string, typ_nadwozia: string, czy_bezwypadkowy: boolean, pierwsza_tablica_rejestracyjna: string)_

## Schemat relacyjnej bazy danych

W modelu relacyjnym baza danych składa się zazwyczaj z większej ilości tabel. Zbiór wszystkich schematów tabel wchodzących w skład relacyjnego modelu danych nazywamy **schematem relacyjnym bazy danych**.

## Właściwości kolumny (kolumn) - kandydatów na klucz główny

| Nazwa      | Opis                                                                                                                                       |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| Trwałość   | Wartość kolumny musi być stale obecna w wierszu, oznacza to, że kolumna (należąca do klucza głównego) nie może przyjmować wartości `Null`. |
| Unikalność | Wartość ta dla każdego wiersza powinna być unikatowa, ponieważ w niepowtarzalny sposób musi identyfikować każdą krotkę.                    |
| Stabliność | Wartość ta nie może się zmieniać.                                                                                                          |

## Rodzaje kluczy

**Klucz prosty** - to taki, który jest jednoelementowy, składa się z jednej kolumny.

**Klucz złożony** - to taki, który jest kilkuelementowy, składa się z więcej niż jednej kolumny.

Kolumny, które należą do kluczy (używa się ich do jednoznacznej identyfikacji wierszy tabeli), nazywamy **atrybutami podstawowymi**.

Kolumny nienależące do klucza nazywamy **atrybutami opisowymi**. Te atrybuty zawierają dane, które w danej relacji są przedmiotem opisu.

**Superklucz** _(ang. superkey)_ - to kolumna lub zestaw kolumn jednoznacznie identyfikujących każdą krotkę. Przedmiotem zainteresowań projektantów baz danych jest taki superklucz, który zawiera minimalny zestaw atrybutów jednoznacznie (niepowtarzalnie, unikatowo) identyfikującą wiersz.

**Klucz kandydujący (nadklucz, klucz potencjalny)** - to superklucz zawierający minimalną liczbę kolumn unikatowo charakteryzujące krotki relacji. Innymi słowy to kolumna lub zbiór kolumn, które projektant bazy danych rozważa jako klucz główny.

**Klucz główny** _(ang. primary key)_ - klucz, który został wybrany (przez projektanta) aby jednoznacznie identyfikowa wiersze w relacji.

**Klucz obcy** - kolumna lub zestaw kolumn w jednej tabeli, która pasuje do klucza kandydującego innej lub tej samej tabeli.

## Schemat bazy danych opisujący klientów banku

>**Klienci_banku** (**numer_klienta**, imie, nazwisko, pesel, zdolnosc_kredytowa, typ_konta)