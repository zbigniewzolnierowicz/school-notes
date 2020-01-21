DROP DATABASE IF EXISTS firma;
DROP USER IF EXISTS kadrowa;
DROP USER IF EXISTS ksiegowa;
DROP USER IF EXISTS magazynier;
DROP USER IF EXISTS informatyk;
DROP USER IF EXISTS prezes;
CREATE DATABASE IF NOT EXISTS firma;
USE firma;
CREATE TABLE pracownicy (
    id_pracownika int auto_increment primary key,
    nazwisko varchar(100) not null,
    imie varchar (50) not null
);

CREATE TABLE place (
    id_pracownika int auto_increment primary key references pracownicy(id_pracownika),
    pensja double not null,
    dodatki double
);

CREATE TABLE magazyn (
    id_towaru int auto_increment primary key,
    nazwa varchar(200) not null,
    cena double not null,
    liczba_sztuk int
);

CREATE USER kadrowa IDENTIFIED BY 'oW!63%P*yqC0';
GRANT ALL ON pracownicy TO kadrowa IDENTIFIED BY 'oW!63%P*yqC0';
GRANT SELECT ON place TO kadrowa IDENTIFIED BY 'oW!63%P*yqC0';

CREATE USER ksiegowa IDENTIFIED BY 'sjS53Wx4T*7$';
GRANT SELECT ON pracownicy TO ksiegowa IDENTIFIED BY 'sjS53Wx4T*7$';
GRANT ALL ON place TO ksiegowa IDENTIFIED BY 'sjS53Wx4T*7$';
GRANT SELECT ON magazyn TO ksiegowa IDENTIFIED BY 'sjS53Wx4T*7$';

CREATE USER magazynier IDENTIFIED BY 'k6EYp^1b5wY0';
GRANT ALL ON magazyn TO magazynier IDENTIFIED BY 'k6EYp^1b5wY0';

CREATE USER informatyk IDENTIFIED BY 'RA61e0KU@r#M';
GRANT ALL ON pracownicy TO informatyk IDENTIFIED BY 'RA61e0KU@r#M' WITH GRANT OPTION;
GRANT ALL ON place TO informatyk IDENTIFIED BY 'RA61e0KU@r#M' WITH GRANT OPTION;
GRANT ALL ON magazyn TO informatyk IDENTIFIED BY 'RA61e0KU@r#M' WITH GRANT OPTION;

CREATE USER prezes IDENTIFIED BY 'Ww39x!IcuP#^';
GRANT SELECT ON pracownicy TO prezes IDENTIFIED BY 'Ww39x!IcuP#^';
GRANT SELECT ON place TO prezes IDENTIFIED BY 'Ww39x!IcuP#^';
GRANT SELECT ON magazyn TO prezes IDENTIFIED BY 'Ww39x!IcuP#^';