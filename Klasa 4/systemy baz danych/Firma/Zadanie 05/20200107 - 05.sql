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

CREATE INDEX idx_imie_nazwisko ON pracownicy (imie, nazwisko);
CREATE INDEX idx_email ON pracownicy (email);
SHOW INDEX FROM pracownicy;