CREATE DATABASE OSOBY CHARACTER SET utf8 COLLATE utf8_general_ci;
USE OSOBY;
CREATE TABLE OSOBY_1 (
    Nazwisko varchar(20),
    Imie varchar(20),
    PESEL char(11)
);
CREATE TABLE OSOBY_2 (
  Nazwisko varchar(30) NOT NULL,
  Imie_1 varchar(20) NOT NULL,
  Imie_2 varchar(20),
  Miasto varchar(30) NOT NULL DEFAULT 'Poznań'
);
CREATE TABLE OSOBY_3 (
    Numer int auto_increment primary key,
    Nazwisko varchar(30) NOT NULL
);

SHOW CREATE TABLE OSOBY_1;