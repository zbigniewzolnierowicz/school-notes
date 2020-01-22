DROP DATABASE IF EXISTS sklep;
DROP USER IF EXISTS handlowiec1;
DROP USER IF EXISTS handlowiec2;
DROP USER IF EXISTS informatyk;
DROP USER IF EXISTS prezes;
CREATE DATABASE IF NOT EXISTS sklep;
USE sklep;
CREATE TABLE dostawcy (
    id_dostawcy int auto_increment primary key,
    adres varchar(255) not null,
    telefon varchar(9) not null check (telefon regexp '^[0-9]{9}$')
);
CREATE TABLE magazyn (
    id_towaru int auto_increment primary key,
    liczba_sztuk int not null
);
CREATE TABLE towary (
    id_dostawcy int references dostawcy(id_dostawcy),
    id_towaru int references magazyn(id_towaru),
    PRIMARY KEY (id_towaru, id_dostawcy)
);
CREATE USER handlowiec1 IDENTIFIED BY 'handlowiec1';
CREATE USER handlowiec2 IDENTIFIED BY 'handlowiec2';
CREATE USER informatyk IDENTIFIED BY 'informatyk';
CREATE USER prezes IDENTIFIED BY 'prezes';
GRANT SELECT ON dostawcy TO handlowiec1 IDENTIFIED BY 'handlowiec1';
GRANT SELECT ON towary TO handlowiec1 IDENTIFIED BY 'handlowiec1';
GRANT ALL ON magazyn TO handlowiec1 IDENTIFIED BY 'handlowiec1';
GRANT SELECT ON dostawcy TO handlowiec2 IDENTIFIED BY 'handlowiec2';
GRANT SELECT ON towary TO handlowiec2 IDENTIFIED BY 'handlowiec2';
GRANT ALL ON magazyn TO handlowiec2 IDENTIFIED BY 'handlowiec2';
GRANT ALL ON dostawcy TO informatyk IDENTIFIED BY 'informatyk' WITH GRANT OPTION;
GRANT ALL ON towary TO informatyk IDENTIFIED BY 'informatyk' WITH GRANT OPTION;
GRANT ALL ON magazyn TO informatyk IDENTIFIED BY 'informatyk' WITH GRANT OPTION;
GRANT ALL ON dostawcy TO prezes IDENTIFIED BY 'prezes';
GRANT ALL ON towary TO prezes IDENTIFIED BY 'prezes';
GRANT SELECT ON magazyn TO prezes IDENTIFIED BY 'prezes';