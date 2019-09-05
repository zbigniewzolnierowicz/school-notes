# Lekcja 18 - DML - Ćwiczenia

## Wstaw do tabeli Pracownicy swoje imię i nazwisko z numerem ID równym 13

```SQL
INSERT INTO Pracownicy (ID, Imię, Nazwisko)
VALUES
(13, 'Zbigniew', 'Żołnierowicz');
```

## Usunąć wszystkich pracowników zespołu 1

```SQL
DELETE
FROM Pracownicy
WHERE NrZespolu = 1;
```

## Zmodyfikuj dane aby wszyscy pracownicy byli aktywni

```SQL
UPDATE Pracownicy
SET Aktywny = 1;
```

# Wstawić pracownika Jan Kowalskiego o ID 12 w zespoly Bazy Danych

```SQL
INSERT INTO Pracownicy (ID, Imię, Nazwisko, NrZespolu)
VALUES
(12, 'Jan', 'Kowalski', (SELECT Id FROM Zespoly WHERE Nazwa = 'Bazy danych'));
```

# Mianować Roberta Andrzejewskiego kierownikiem działu Zarządzanie

```SQL
UPDATE Zespoły
SET Kierownik = (SELECT ID FROM Pracownicy WHERE Imię = 'Robert' AND Nazwisko = 'Andrzejewski)
WHERE Nazwa = 'Zarządzanie';
```
