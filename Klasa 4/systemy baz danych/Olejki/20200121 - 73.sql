USE olejki;

-- Zadanie 1
UPDATE olejkiceny
SET Cena = Cena * 0.75
WHERE Cena > (
    SELECT AVG(Cena) FROM olejkiceny
);

-- Zadanie 2

UPDATE olejkiilosci
SET IloscOpakowan = (
    SELECT IloscOpakowan
    FROM olejkiilosci
    WHERE IDOlejku = (
        SELECT IDOlejku
        FROM olejki
        WHERE NazwaOlejku = 'Majeranek'
    )
)
WHERE IDOlejku = (
    SELECT IDOlejku
    FROM olejki
    WHERE NazwaOlejku = 'Bazylia'
);

-- Zadanie 3

UPDATE olejkiilosci
SET IloscOpakowan = IloscOpakowan + 100
WHERE IDOlejku IN (
    SELECT IDOlejku
    FROM olejki
    WHERE IDTypuRosliny = (
        SELECT IDTypuRosliny FROM roslinytypy WHERE TypRosliny = 'Drzewo'
    )
);

-- Zadanie 4

UPDATE olejkiceny
SET Cena = Cena * 1.65
WHERE IDOlejku IN (SELECT IdOlejku
                   FROM olejki
                   WHERE IDTypuRosliny =
                         (SELECT IDSkladnikaRosliny FROM roslinyskladniki WHERE SkladnikRosliny = 'Kwiaty'));

-- Zadanie 5

UPDATE olejkiilosci
SET IloscOpakowan = IloscOpakowan * 1.1
WHERE IloscOpakowan < 35;