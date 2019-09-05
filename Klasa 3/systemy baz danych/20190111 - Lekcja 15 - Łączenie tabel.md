# Lekcja 15 - Łączenie tabel

## Iloczyn kartezjański (`CROSS JOIN`)

W wyniku otrzymujemy kombinację każdej krotki pierwszej tabeli z każdą krotką drugiej tabeli.
Liczba krotek w tabeli stanowiącej wynik połączenia poprzez iloczyn kartezjański jest równa iloczynowi rozmiarów oryginalnych tabel (o ile nie wprowadzi się dodatkowych warunków selekcji).
Iloczyn kartezjański w czystej postaci rzadko bywa przydatny.

```SQL
SELECT lista kolumn
FROM tabela1 CROSS JOIN tabela2
WHERE ...
ORDER BY ...;
```

## Złączenia wewnętrzne (`INNER JOIN`)

W wyniku otrzymujemy tylko te krotki z obu relacji, dla których spełniony jest warunek połączeniowy.

Po wyznaczeniu iloczynu kartezjańskiego, dla każdego wiersza obliczany jest wynik warunku (lub warunków) określowych w ON (*logika trójwarstwowa* - wynik może być spełniony (`TRUE`), niespełniony (`FALSE`) lub nieznany (`UNKNOWN`).

```SQL
SELECT lista_atrybutów
FROM tabela_1 INNER JOIN tabela_2 ON warunek_połączeniowy;
```

Słowo `INNER` można pominąć.

```SQL
SELECT pracownicy.Nazwisko, z.Nazwa, z.IdZesp
FROM pracownicy INNER JOIN zespoly z ON
(pracownicy.IdZesp = z.IdZesp);
```

1. Najpierw wykonywany jest iloczyn kartezjański tabeli A oraz B (każdy z każdym)
2. Dla każdego wiersza określany jest wynik warunków połączeń (zdefiniowane w ON) - TRUE, FALSE lub UNKNOWN
3. Następnie usumięcie wszystkich elementów z pośredniego zbioru wynikowego, dla których wynik połączenia (z p.2) jest różny od TRUE.

## Złączenia zewnętrzne (`OUTER JOIN`)

Przy połączeniu wewnętrznym wiersze z obu tabel nie posiadające odpowiendików spełniających warunek połączenia nie są wyświetlane.

Połączenie zewnętrzne (ang. *outer join*) zachowuje wszystkie krotki z wybranej relacji, łącząc je z "wirtualnymi" krotkami z drugiej tabeli. "Wirtualne" krotki są wypełniane wartościami pustymi.

```SQL
SELECT lista_atrybutów
FROM tabela_1 (LEFT|RIGHT|FULL) OUTER JOIN tabela_2 ON warunek_połączeniowy;
```

## Połączenie zwrotne (`SELF JOIN`)

Połączenie (ang. *self join*), w którym relacja łączy się sama ze sobą (występuje kilkukrotnie w klauzuli `FROM`. Użycie aliasów jest wymagane w tym połączeniu by rozróżnić tabele.

## Operator `UNION`

`UNION` - suma zbiorów

Ogólna postać:

```SQL
Instrukcja SELECT_1
UNION
Instrukcja SELECT_2
ORDER BY lista_kolumn
```

Wszystkie instrukcje `SELECT` połączone ze sobą za pomocą operatora `UNION` muszą mieć taką samą liczbę kolumn na `liście_kolumn`. Wszystkie kolumny na `liście_kolumn` w każdej instrukcji `SELECT` muszą być wymienione w tej samej kolejności. Wszystkie odpowiadające sobie kolumny na liście_kolumn każdej instrukcji SELECT muszą mieć takie same lub zgodne ze sobą typy danych.

## Operator `UNION` i `UNION ALL`

Za pomocą operatora `UNION` eliminowane są wszystkie zduplikowane wiersze. Stosując operator `UNION ALL` wyświetlamy wszystkie wiersze, nawet gdy są wśród nich duplikaty. `DISTINCT` stosowany jest w pojedynczej instrukcji `SELECT` połączonych ze sobą za pomocą operatora `UNION`.

## Operator `EXCEPT`

`EXCEPT` - różnica zbiorów

Ogólna postać:

```SQL
Instrukcja SELECT_1
EXCEPT
Instrukcja SELECT_2
ORDER BY lista_kolumn
```

## Podzapytanie

Składnia ogólnej instrukcji `SELECT`:

```SQL
SELECT lista_kolumn
FROM lista_tabel
WHERE warunek
GROUP BY lista_kolumn
HAVING warunek
ORDER BY lista_kolumn
```

Trzy główne sposoby użycia podzapytań:

- Wykorzystanie podzapytania jako źródło danych - podzapytanie jest częścią klauzuli `FROM` (znajduje się w miejscu `lista_tabel`)
- Wykorszystanie podzapytania w kryteriach selekcji - podzapytanie jest częścią klauzuli `WHERE` lub `HAVING` (znajduje się w miejscu `warunku`)
- Wykorzystanie podzapytania do wyznaczenia wartości kolumny obliczanej - podzapytanie jest częścią klauzuli `SELECT`, `GROUP BY` lub `ORDER BY` (znajduje się w miejscu `listy_kolumn`)

### Podzapytania w klauzuli FROM

Wyświetl nazwiska pracowników, którzy zarabiają więcej niż średnia płaca w zespole, w którym pracują.

```SQL
SELECT Nazwisko, Płaca, Średnia
FROM
    (SELECT IdZesp, AVG(Płaca) AS Średnia
    FROM Pracownicy
    GROUP BY IdZesp) AS z
    JOIN Pracownicy AS p ON z.IdZesp = p.IdZesp
WHERE Płaca > Średnia;
```

### Rodzaje podzapytań

#### Podzapytania nieskorelowane

Nie są powiązane z zewnętrznym zapytaniem i są od niego załkowicie niezależne. Są one weryfikowane pod względem poprawości i wykonywane tylko raz, jako element całej instrukcji SELECT. Mogą być one traktowane jako osobne byty, niepowiązane z zewnętrznym zapyytaniem (można je wykonać jako osobne instrukcje SQL)

#### Podzapytania skorelowane

Są powiązane z zewnętrznym zapytaniem. Każdy wiersz tego rodzaju pozapytania jest weryfikowany pod względem poprawności i przy każdym jego uruchomieniu może zwracać różne wyniki. Podzapytania skorelowane nie są odrębnymi bytami, gdyż ich elementy sa powiązane z zewnętrznym zapytaniem.

Przykład podzapytania skorelowanego:

```SQL
SELECT NazwaKlienta
FROM Klienci AS k
WHERE (
    SELECT SUM(Kwota)
    FROM Transakcje AS t
    WHERE k.IdKlienta = t.IdKlienta;
) < 20;
```

---

```SQL
SELECT p.Nazwisko, p.Etat
FROM Pracownicy AS p
WHERE (
  SELECT m.IdZesp
  FROM Pracownicy AS m
  WHERE m.Nazwisko = "Misiek"
)
```

---

```SQL
SELECT TOP 1 z.Nazwa
FROM (
  SELECT g.IdZesp, COUNT(g.IdPrac)
  FROM Pracownicy AS g
  GROUP BY g.IdZesp
) AS pod INNER JOIN Zespoły z ON pod.IdZesp = z.IdZesp
ORDER BY pod.licz;
```

---

```SQL
SELECT m.Nazwisko
FROM Pracownicy AS m LEFT JOIN (
    SELECT MAX(g.Płaca) AS Maximum
    FROM Pracownicy AS g
    GROUP BY g.IdZesp
) z ON (g.IdZesp = m.IdZesp)
WHERE z.Maximum * 0.7 > z.Płaca
```

---

```SQL
SELECT b.Nazwa, b.Średnia
FROM Pracownicy AS b INNER JOIN (SELECT z.Nazwa, z.IdZesp
FROM Pracownicy INNER JOIN zespoly z ON (pracownicy.IdZesp = z.IdZesp)
GROUP BY z.IdZesp;);
```

```SQL
SELECT z.Nazwa, AVG(p.Płaca)
FROM Pracownicy AS p LEFT JOIN Zespoły z ON (z.IdZesp = p.IdZesp)
GROUP BY p.IdZesp
ORDER BY p.IdZesp ASC;
```

```SQL
SELECT p.Nazwisko
FROM Pracownicy AS p FULL LEFT JOIN Zespoły z ON (p.IdZesp = z.IdZesp)
WHEARE p.Adres = "Poznań";
```

```SQL
SELECT TOP 1 Pracownicy.Nazwisko
FROM Pracownicy
GROUP BY Pracownicy.Nazwisko
ORDER BY Pracownicy.Płaca DESC

SELECT Pracownicy.Nazwisko
FROM Pracownicy
WHERE Pracownicy.Płaca > (
  SELECT AVG(Płaca)
  FROM Pracownicy;
);
