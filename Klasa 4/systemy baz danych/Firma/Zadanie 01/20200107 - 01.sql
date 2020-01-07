USE firma;

SHOW TABLES;

DESCRIBE dzialy;
DESCRIBE kategorie;
DESCRIBE nadgodziny;
DESCRIBE oddzialy;
DESCRIBE pracownicy; -- Zły typ IdOddziału
DESCRIBE premie;
DESCRIBE projekty; -- Zły typ IdKategori
DESCRIBE projektywykonanie;
DESCRIBE stanowiska;

CREATE TABLE pracownicy_bak LIKE pracownicy;
INSERT INTO pracownicy_bak SELECT * FROM pracownicy;
CREATE TABLE projekty_bak LIKE projekty;
INSERT INTO projekty_bak SELECT * FROM projekty;

USE firma_bak;
SHOW TABLES;