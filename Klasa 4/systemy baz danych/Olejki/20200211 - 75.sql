USE olejki;

-- Ćwiczenie 1

CREATE OR REPLACE VIEW Cwiczenie1 AS
SELECT IdOlejku, NazwaOlejku, TypRosliny, SkladnikRosliny, DataProdukcji, OkresWażności
FROM olejki o
         LEFT JOIN roslinytypy rt on o.IDTypuRosliny = rt.IDTypuRosliny
         LEFT JOIN roslinyskladniki rs on o.IDSkladnikaRosliny = rs.IDSkladnikaRosliny;

-- Ćwiczenie 2

CREATE OR REPLACE VIEW Cwiczenie2 AS
SELECT o.IdOlejku,
       NazwaOlejku,
       TypRosliny,
       SkladnikRosliny,
       DataProdukcji,
       OkresWażności,
       Objetosc_ml,
       IloscOpakowan
FROM olejki o
         LEFT JOIN roslinytypy rt on o.IDTypuRosliny = rt.IDTypuRosliny
         LEFT JOIN roslinyskladniki rs on o.IDSkladnikaRosliny = rs.IDSkladnikaRosliny
         LEFT JOIN olejkiceny oc on o.IDOlejku = oc.IDOlejku
         LEFT JOIN olejkiilosci oi ON o.IDOlejku = oi.IDOlejku;

-- Ćwiczenie 3

CREATE OR REPLACE VIEW Cwiczenie3 AS
SELECT o.IdOlejku,
       NazwaOlejku,
       TypRosliny,
       SkladnikRosliny,
       DataProdukcji,
       OkresWażności,
       Objetosc_ml,
       IloscOpakowan,
       (CAST(ROUND(Cena / Objetosc_ml, 2) AS decimal(19, 2))) AS Cena
FROM olejki o
         LEFT JOIN roslinytypy rt on o.IDTypuRosliny = rt.IDTypuRosliny
         LEFT JOIN roslinyskladniki rs on o.IDSkladnikaRosliny = rs.IDSkladnikaRosliny
         LEFT JOIN olejkiceny oc on o.IDOlejku = oc.IDOlejku
         LEFT JOIN olejkiilosci oi ON o.IDOlejku = oi.IDOlejku;

-- Ćwiczenie 4

CREATE OR REPLACE VIEW Cwiczenie4 AS
SELECT TypRosliny, SUM(IloscOpakowan * oc.Cena) AS 'Wartosc'
FROM Cwiczenie3 cw3
         LEFT JOIN olejkiceny oc on cw3.IdOlejku = oc.IDOlejku
GROUP BY TypRosliny;

-- Ćwiczenie 5

CREATE OR REPLACE VIEW Cwiczenie5 AS
SELECT IdOlejku, (Objetosc_ml * IloscOpakowan) MililitryLacznie
FROM Cwiczenie3
ORDER BY 2 DESC;

-- Ćwiczenie 6

CREATE OR REPLACE VIEW Cwiczenie6 AS
SELECT SkladnikRosliny, CAST(ROUND(AVG(Cena), 2) AS DECIMAL(19, 2)) SredniaCena
FROM Cwiczenie3
GROUP BY SkladnikRosliny;

-- Ćwiczenie 7

CREATE OR REPLACE VIEW Cwiczenie7 AS
SELECT o.IDOlejku, NazwaOlejku, Zapach
FROM olejki o
         LEFT JOIN olejkizapachy oz on o.IDOlejku = oz.IDOlejku
         LEFT JOIN zapachy z on oz.IDZapachu = z.IDZapachu;

-- Ćwiczenie 8

CREATE OR REPLACE VIEW Cwiczenie8 AS
SELECT IdOlejku, NazwaOlejku, COUNT(Zapach) IleZapachow
FROM Cwiczenie7
GROUP BY IdOlejku, NazwaOlejku;

-- Ćwiczenie 9

CREATE OR REPLACE VIEW Cwiczenie9 AS
SELECT Zapach, COUNT(IDOlejku) IleOlejkow
FROM Cwiczenie7
GROUP BY Zapach;

-- Ćwiczenie 10

SELECT Zapach, IleOlejkow
FROM Cwiczenie9
ORDER BY 2 DESC
LIMIT 3;

-- Ćwiczenie 11

SELECT NazwaOlejku
FROM Cwiczenie8
WHERE IleZapachow = (SELECT MAX(IleZapachow) FROM Cwiczenie8);

-- Ćwiczenie 12

CREATE OR REPLACE VIEW Cwiczenie12 AS
SELECT o.IdOlejku, NazwaOlejku, COUNT(IDOstrzezenia) IleOstrzezen
FROM olejki o
         LEFT JOIN olejkiostrzezenia oo on o.IDOlejku = oo.IDOlejku
GROUP BY IdOlejku, NazwaOlejku;

-- Ćwiczenie 13
CREATE OR REPLACE VIEW Cwiczenie13 AS
SELECT o.IdOlejku,
       o.NazwaOlejku,
       Cena,
       IleZapachow,
       IleOstrzezen
FROM olejki o
         LEFT JOIN olejkiceny oc on o.IDOlejku = oc.IDOlejku
         LEFT JOIN Cwiczenie8 c8 on o.IDOlejku = c8.IdOlejku
         LEFT JOIN Cwiczenie12 c12 on o.IDOlejku = c12.IdOlejku