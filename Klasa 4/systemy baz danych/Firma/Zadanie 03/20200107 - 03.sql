DROP DATABASE IF EXISTS Biblioteka;
CREATE DATABASE IF NOT EXISTS Biblioteka;
USE Biblioteka;
CREATE TABLE czytelnicy (
    id_czytelnika int auto_increment primary key,
    nazwisko varchar(30) not null,
    imie varchar(25) not null,
    adres varchar(255) not null
);

CREATE TABLE autorzy (
    id_autora int auto_increment primary key,
    imie_nazwisko varchar(255)
);

CREATE TABLE wydawnictwa (
    id_wydawnictwa int auto_increment primary key,
    nazwa varchar(255)
);

CREATE TABLE ksiazki (
    id_ksiazki int auto_increment primary key,
    tytul varchar(255) not null,
    rok_wydania year,
    id_wydawnictwa int REFERENCES wydawnictwa(id_wydawnictwa)
);

CREATE TABLE ksiazki_autorzy (
    id_ksiazki int REFERENCES ksiazki(id_ksiazki),
    id_autora int REFERENCES autorzy(id_autora)
);

CREATE TABLE wypozyczenia (
    id_wypozyczenia int auto_increment primary key,
    data date not null default CURRENT_DATE(),
    id_czytelnika int REFERENCES czytelnicy(id_czytelnika),
    id_ksiazki int REFERENCES ksiazki(id_ksiazki),
    czy_oddane boolean DEFAULT false
);

CREATE INDEX czytelnicy_imie_nazwisko ON czytelnicy (imie, nazwisko);