# Lekcja 16 - Modyfikowanie danych (DML)

## Sposoby modyfikacji danych

- Wstawianie nowych wierszy do tabeli
- Usuwanie wierszy z tabeli
- Aktualizacja istniejących danych w określonych wierszachj lub kolumnach w tabeli

## Wstawianie danych

Aby w SQL dodać dane do tabeli można skorzystać ze słowa kluczowego `INSERT`. Można tego dokonać na dwa sposoby, poprzez:

- Dodanie określonych danych wyszczególnionych w instrukcji `INSERT`
- Dodanie nowych danych będących wynikiem instrukcji `SELECT`

Kolejność elementów danych po słowie kluczowym `VALUES` odpowiada kolejności kolumn wymienionych po słowie `INSERT`

```SQL
INSERT INTO Kontrahenci (Imię, Nazwisko, Województwo)
VALUES
('Klaudia', 'Janosik', 'zachodniopomorskie'),
('Irena', 'Pierwiastek', 'opolskie');
```

Kolejność, w jakiej zostały wymienione kolumny, nie musi być taka sama, jak w tabeli znajdującej się w bazie danych.

Jeśli wszystkie kolumny na `liście_kolumn` wymienione są w tej samej kolejności, w jakiej istnieją fizyznie w bazie danych, oraz jeśli w tabeli nie istnieją kolumny z automatycznym przyrostem wartości, wówczas instrukcja `INSERT INTO` może zostać wykonana bez podawania `listy_kolumn`.

Kolumny wymienione są w prawidłowej kolejności i odpowiadają sobie w obu wspomnianych tabelach (nazwy nie mają znaczenia)

## Usuwanie danych

Instrukcja `DELETE`

```SQL
DELETE
FROM Tabela
WHERE Warunek;
```

Usuwane są całe wiersze, nie zaś poszczególne kolumny w wierszu.

```SQL
DELETE
FROM Kontrahenci
WHERE Województwo='podkarpackie';
```

## Aktualizacja danych

Instrukcja `UPDATE`

```SQL
UPDATE Tabela
SET Kolumna1 = Wyrażenie,
Kolumna 2 = Wyrażenie,
(powtarzaj dowolną ilość razy)
WHERE Warunek;
```

Procedura aktualizacji obejmuje wyszczególnienie kolumn, które mają zostać zaktualizowane oraz sposób wyboru wierszy. Za pomocą instrukcji `UPDATE` może zostać zaktualizowana tylko pojedyncza tabela.
