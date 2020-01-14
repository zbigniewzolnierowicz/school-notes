USE firma;

CREATE INDEX idx_nazwisko ON pracownicy (Nazwisko);
SELECT Nazwisko FROM pracownicy;

CREATE INDEX idx_nazwisko_imie ON pracownicy (Nazwisko, Imie);
SELECT Imie, Nazwisko FROM pracownicy;

CREATE INDEX idx_nazwiska_hash USING HASH ON pracownicy(Nazwisko);
SELECT Nazwisko FROM pracownicy;

-- Nie można utworzyć unikalnego indexu, ponieważ tabela zawiera duplikowane wartości, wszystkie muszą być unikalne.

-- Zadanie 1: A
-- Zadanie 2: C
-- Zadanie 3: A
-- Zadanie 4: B