CREATE DATABASE IF NOT EXISTS szkola;
USE szkola;
CREATE TABLE klasa (
    id_klasy int auto_increment primary key,
    nazwa_klasy varchar(2) not null,
    id_profilu int not null,
    utworzenie_klasy varchar(9) CHECK (utworzenie_klasy REGEXP '^[0-9]{4}\-[0-9]{4}$')
);
CREATE TABLE profile (
    id_profilu int auto_increment primary key,
    nazwa varchar(64) not null
);
CREATE TABLE uczen (
    id_ucznia int auto_increment primary key,
    imie varchar(20) not null,
    nazwisko varchar(30) not null,
    data_urodzenia date not null,
    plec char not null check ( plec REGEXP '[KMI]'),
    id_klasy int not null
);
ALTER TABLE klasa
    ADD CONSTRAINT FK_klasa_profil
        FOREIGN KEY (id_profilu) REFERENCES profile(id_profilu);
ALTER TABLE uczen
    ADD CONSTRAINT FK_uczen_klasa
        FOREIGN KEY (id_klasy) REFERENCES klasa(id_klasy);

INSERT INTO profile (nazwa) VALUES ('biofiz');
INSERT INTO profile (nazwa) VALUES ('matfiz');
INSERT INTO klasa (nazwa_klasy, id_profilu, utworzenie_klasy) VALUES ('2A', 1, '2000-2001');
INSERT INTO klasa (nazwa_klasy, id_profilu, utworzenie_klasy) VALUES ('1A', 2, '2001-2002');
INSERT INTO uczen (imie, nazwisko, data_urodzenia, plec, id_klasy) VALUES ('Adam', 'Nowak', '2000-09-20', 'M', 1);
INSERT INTO uczen (imie, nazwisko, data_urodzenia, plec, id_klasy) VALUES ('Anna', 'Kwietnik', '2001-09-21', 'K', 2);

SHOW TABLES;
SELECT * FROM profile;
SELECT * FROM klasa;
SELECT * FROM uczen;