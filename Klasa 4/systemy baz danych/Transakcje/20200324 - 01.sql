-- 1 . sprawdź skrypt bazy bank i dostosuj do środowiska

DROP DATABASE bank;

-- 2.  stworz bazę bank

CREATE DATABASE bank;

USE bank;

CREATE TABLE bank.Bank_klienci
(
    ID       INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Imie     VARCHAR(20) NOT NULL,
    Nazwisko VARCHAR(20) NOT NULL,
    Miasto   VARCHAR(20) NOT NULL
);

CREATE TABLE bank.Bank_konta
(
    ID      INT      NOT NULL,
    nrKonta CHAR(26) NOT NULL PRIMARY KEY,
    Saldo   INT      NOT NULL,
    CONSTRAINT fk_ID FOREIGN KEY (ID) REFERENCES bank.Bank_klienci (ID)
);


INSERT INTO bank.Bank_klienci(Imie, Nazwisko, Miasto)
VALUES ('Anna', 'Braun', 'Warsaw'),
       ('Celia', 'Donut', 'Berlin'),
       ('Ellie', 'Fine', 'Berlin'),
       ('Gloria', 'Hint', 'Paris'),
       ('Ian', 'Johnson', 'Warsaw'),
       ('Kelly', 'Long', 'Paris'),
       ('Merry', 'Nice', 'Paris'),
       ('Olaf', 'Priceless', 'Berlin'),
       ('Richard', 'Short', 'Warsaw'),
       ('Tim', 'Uncle', 'Warsaw');

INSERT INTO bank.Bank_konta(ID, nrKonta, Saldo)
VALUES (1, '12345678932165498714785236', 1652),
       (2, '85235678932165498714765416', 15698),
       (3, '74135678932165498714789632', 9652),
       (4, '96815678932165498714783258', 10367),
       (5, '32175678932165498714783699', 357),
       (6, '86115678932165498714781147', 14631),
       (7, '33585678932165498714783247', 11900),
       (8, '77565678932165498714786874', 3549),
       (9, '49635678932165498714780258', 2463),
       (10, '10285678932165498714783049', 7681);

-- 2.5 konieczna zmiana silinka bazy na InnoDB, zmieniamy silnik tabel

ALTER TABLE bank_klienci
    ENGINE = InnoDB;
ALTER TABLE bank_konta
    ENGINE = InnoDB;

-- 3. Utwórz widok (Bank_widok), który uwzględni osoby z saldem 1000 lub
-- mniejszym oraz tych z saldem 10000 lub większym.

CREATE OR REPLACE VIEW Bank_widok AS
(
SELECT bkl.ID, Imie, Nazwisko, Miasto, nrKonta, Saldo
FROM bank_klienci bkl
         INNER JOIN bank_konta bko ON bkl.ID = bko.ID
         WHERE Saldo <= 1000 OR Saldo >= 10000
    );


-- 4. Utwórz transakcję, w której klient o ID 3 przeleje klientowi o ID 7
-- kwotę 1450zł. Odwołaj transakcję.

START TRANSACTION;
UPDATE bank_konta
SET Saldo = Saldo - 1450
WHERE ID = 3;
UPDATE bank_konta
SET Saldo = Saldo + 1450
WHERE ID = 7;
ROLLBACK;

-- 5. Utwórz transakcję, w której klient o ID 6 przeleje
-- klientowi o ID 5 kwotę 220zł. Potwierdź transakcję.

START TRANSACTION;
UPDATE bank_konta
SET Saldo = Saldo - 220
WHERE ID = 6;
UPDATE bank_konta
SET Saldo = Saldo + 220
WHERE ID = 5;
COMMIT;

-- 6. Dodaj kolejnego klienta – Wu X’ian z saldem 31500.
-- Miasto – Paris, nr konta: 25025536548520147930286057.

START TRANSACTION;
INSERT INTO bank_klienci (Imie, Nazwisko, Miasto) VALUES ('Wu', 'X\'ian', 'Paris');
SET @A = (SELECT ID FROM bank_klienci WHERE Imie = 'Wu' AND Nazwisko = 'X\'ian');
INSERT INTO bank_konta (ID, nrKonta, Saldo) VALUES (@A, '25025536548520147930286057', 31500);
COMMIT;