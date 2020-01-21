USE olejki;
-- Zadanie 1, 2
INSERT INTO olejki(IDOlejku, NazwaOlejku)
VALUES (52, 'Truskawka'), (53, 'Malina'), (54, 'Estragon');

-- Zadanie 3

INSERT INTO olejkiceny (IDOlejku, Objetosc_ml, Cena) VALUES (52, 50, 20), (53, 100,45), (54, 50, 60);
INSERT INTO olejkiilosci (IDOlejku, IloscOpakowan) VALUES (52, 100), (53, 50), (54, 20);
INSERT INTO olejkiostrzezenia (IDOlejku, IDOstrzezenia) VALUES (52, 1), (53, 2), (53, 8), (54, 4);
INSERT INTO olejkizapachy (IDOlejku, IDZapachu) VALUES (52, 1), (52, 16), (52, 24), (53, 1), (53, 13), (54, 2);

SELECT * FROM olejki;