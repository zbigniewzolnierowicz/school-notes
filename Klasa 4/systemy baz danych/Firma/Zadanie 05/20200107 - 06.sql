DROP DATABASE IF EXISTS firma_alt;
CREATE DATABASE IF NOT EXISTS firma_alt;
USE firma_alt;
CREATE TABLE pracownicy (
    id_pracown int auto_increment primary key,
    nazwisko varchar(255) not null,
    imie varchar(100) not null,
    telefon varchar(9) CHECK (telefon REGEXP '^[0-9]{9}$'),
    email varchar(255)
);

CREATE UNIQUE INDEX uniq_telefon ON pracownicy (telefon);
CREATE UNIQUE INDEX uniq_email ON pracownicy (email);
SHOW INDEX FROM pracownicy;
INSERT INTO pracownicy (nazwisko, imie, telefon, email) VALUES ('Jan', 'Kowalski', '606606606', 'foo@bar.baz');
INSERT INTO pracownicy (nazwisko, imie, telefon, email) VALUES ('Adam', 'Nowak', '606123606', 'foo@bar.baz');
INSERT INTO pracownicy (nazwisko, imie, telefon, email) VALUES ('Tomasz', 'Przybylski', '606606606', 'foo@baw.bax');