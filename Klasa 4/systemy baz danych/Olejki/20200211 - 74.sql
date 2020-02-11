USE olejki;

-- Ćw. 93

DELETE FROM olejkiostrzezenia WHERE IDOlejku IN (SELECT IdOlejku FROM olejki WHERE NazwaOlejku = 'Cynamon');

-- Ćw 94

DELETE FROM olejkizapachy WHERE IDZapachu IN (SELECT IDZapachu FROM zapachy WHERE Zapach = 'Ostry');

-- Ćw 95

DELETE FROM olejki WHERE IDOlejku IN (SELECT IDOlejku FROM olejkiostrzezenia GROUP BY IDOlejku HAVING COUNT(IDOstrzezenia) > 2);

-- Ćw 96

DELETE FROM olejkiceny WHERE IDOlejku NOT IN (SELECT IdOlejku FROM olejki);
DELETE FROM olejkicharakterystyki WHERE IDOlejku NOT IN (SELECT IdOlejku FROM olejki);
DELETE FROM olejkiilosci WHERE IDOlejku NOT IN (SELECT IdOlejku FROM olejki);
DELETE FROM olejkiostrzezenia WHERE IDOlejku NOT IN (SELECT IdOlejku FROM olejki);
DELETE FROM olejkistezenia WHERE IDOlejku NOT IN (SELECT IdOlejku FROM olejki);
DELETE FROM olejkizapachy WHERE IDOlejku NOT IN (SELECT IdOlejku FROM olejki);

-- Ćw 97

TRUNCATE TABLE OlejkiOstrzezeniaRozszerzone;