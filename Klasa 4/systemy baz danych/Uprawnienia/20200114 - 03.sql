DROP DATABASE IF EXISTS biblioteka;
DROP USER IF EXISTS Nowak;
DROP USER IF EXISTS Kowalski;
DROP USER IF EXISTS Iksinski;
DROP USER IF EXISTS Administrator;

CREATE DATABASE biblioteka;
USE biblioteka;

CREATE TABLE czytelnicy (
    id_czytelnika int auto_increment primary key,
    nazwisko varchar(100) not null,
    imie varchar(50) not null,
    adres varchar(255) not null
);

CREATE TABLE ksiazki (
    id_ksiazki int auto_increment primary key,
    tytul varchar(100),
    autor varchar(100),
    rok_wydania year,
    wydawnictwo varchar(100)
);

CREATE TABLE wypozyczenia (
    id_wypozyczenia int auto_increment primary key,
    data_wypozyczenia date not null,
    id_czytelnika int references czytelnicy(id_czytelnika),
    id_ksiazki int references ksiazki(id_ksiazki)
);
CREATE USER IF NOT EXISTS Nowak IDENTIFIED BY 'Nowak';
CREATE USER IF NOT EXISTS Kowalski IDENTIFIED BY 'Kowalski';
CREATE USER IF NOT EXISTS Iksinski IDENTIFIED BY 'Iksinski';
CREATE USER IF NOT EXISTS Administrator IDENTIFIED BY 'Administrator';
GRANT SELECT, INSERT, DELETE, UPDATE ON czytelnicy TO Nowak IDENTIFIED BY 'Nowak';
GRANT SELECT ON ksiazki TO Nowak IDENTIFIED BY 'Nowak';
GRANT SELECT ON wypozyczenia TO Nowak IDENTIFIED BY 'Nowak';
GRANT SELECT ON czytelnicy TO Kowalski IDENTIFIED BY 'Kowalski';
GRANT SELECT, INSERT, DELETE, UPDATE ON ksiazki TO Kowalski IDENTIFIED BY 'Kowalski';
GRANT SELECT ON wypozyczenia TO Kowalski IDENTIFIED BY 'Kowalski';
GRANT SELECT ON czytelnicy TO Iksinski IDENTIFIED BY 'Iksinski';
GRANT SELECT ON ksiazki TO Iksinski IDENTIFIED BY 'Iksinski';
GRANT SELECT, INSERT, DELETE, UPDATE ON wypozyczenia TO Iksinski IDENTIFIED BY 'Iksinski';
GRANT ALL ON czytelnicy TO Administrator IDENTIFIED BY 'Administrator';
GRANT ALL ON ksiazki TO Administrator IDENTIFIED BY 'Administrator';
GRANT ALL ON wypozyczenia TO Administrator IDENTIFIED BY 'Administrator';
