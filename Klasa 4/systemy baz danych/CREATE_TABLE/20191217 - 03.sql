DROP DATABASE IF EXISTS MUZYKA_ZZ;

CREATE DATABASE MUZYKA_ZZ;

USE MUZYKA_ZZ;

CREATE TABLE Panstwa (
    Id_Panstwa varchar(3) PRIMARY KEY,
    Nazwa varchar(20) NOT NULL
);

INSERT INTO Panstwa (Id_Panstwa, Nazwa) VALUES ('PL', 'Polska');
INSERT INTO Panstwa (Id_Panstwa, Nazwa) VALUES ('USA', 'Stany Zjednoczone');
INSERT INTO Panstwa (Id_Panstwa, Nazwa) VALUES ('IR', 'Irlandia');
INSERT INTO Panstwa (Id_Panstwa, Nazwa) VALUES ('FR', 'Francja');
INSERT INTO Panstwa (Id_Panstwa, Nazwa) VALUES ('GB', 'Wielka Brytania');

CREATE TABLE Wykonawcy (
    Id_Wykonawcy varchar(3) PRIMARY KEY,
    Nazwisko varchar(25),
    Imie varchar(10),
    Pseudonim varchar(10),
    Pochodzenie varchar(3),
    CONSTRAINT FK_Pochodzenie_Panstwa FOREIGN KEY (Pochodzenie) REFERENCES Panstwa(Id_Panstwa) ON UPDATE CASCADE
);

INSERT INTO Wykonawcy (Id_Wykonawcy, Nazwisko, Imie, Pseudonim, Pochodzenie) VALUES ('W01', NULL, NULL, 'U2', 'IR');
INSERT INTO Wykonawcy (Id_Wykonawcy, Nazwisko, Imie, Pseudonim, Pochodzenie) VALUES ('W02', 'Kowalska', 'Kasia', NULL, 'PL');
INSERT INTO Wykonawcy (Id_Wykonawcy, Nazwisko, Imie, Pseudonim, Pochodzenie) VALUES ('W03', 'Davis', 'Miles', NULL, 'USA');

CREATE TABLE Muzyka_Rodzaje (
    Id_Rodzaju varchar(3) PRIMARY KEY,
    Rodzaj varchar(10) NOT NULL
);

INSERT INTO Muzyka_Rodzaje (Id_Rodzaju, Rodzaj) VALUES ('J', 'Jazz');
INSERT INTO Muzyka_Rodzaje (Id_Rodzaju, Rodzaj) VALUES ('R', 'Rock');
INSERT INTO Muzyka_Rodzaje (Id_Rodzaju, Rodzaj) VALUES ('P', 'Pop');

CREATE TABLE Plyty (
    Id_Plyty varchar(5) PRIMARY KEY,
    Tytul varchar(35) NOT NULL,
    Rok year,
    Id_Rodzaju varchar(3) NOT NULL,
    CONSTRAINT FK_Id_Rodzaju_Muzyka_Rodzaje FOREIGN KEY (Id_Rodzaju) REFERENCES Muzyka_Rodzaje(Id_Rodzaju)
);

INSERT INTO Plyty (Id_Plyty, Tytul, Rok, Id_Rodzaju) VALUES ('P0001', 'Seven Steps to Heaven', 1963, 'J');
INSERT INTO Plyty (Id_Plyty, Tytul, Rok, Id_Rodzaju) VALUES ('P0002', 'Love Songs', 1999, 'J');

CREATE TABLE Plyty_Wykonawcy (
    Id_Plyty varchar(5) NOT NULL CHECK (Id_Plyty REGEXP '^[a-zA-Z][0-9]*$'),
    Id_Wykonawcy varchar(3) NOT NULL CHECK (Id_Wykonawcy REGEXP '^[a-zA-Z][0-9]*$'),
    CONSTRAINT PK_Plyty_Wykonawcy PRIMARY KEY (Id_Plyty, Id_Wykonawcy),
    CONSTRAINT FK_Id_Plyty_Plyty FOREIGN KEY (Id_Plyty) REFERENCES Plyty(Id_Plyty),
    CONSTRAINT FK_Id_Wykonawcy_Wykonawcy FOREIGN KEY (Id_Wykonawcy) REFERENCES Wykonawcy(Id_Wykonawcy)
);

INSERT INTO Wykonawcy (Id_Wykonawcy, Nazwisko, Imie, Pseudonim, Pochodzenie) VALUES ('W04', 'Fitzgerald', 'Ella', NULL, 'USA');
INSERT INTO Wykonawcy (Id_Wykonawcy, Nazwisko, Imie, Pseudonim, Pochodzenie) VALUES ('W05', 'Armstrong', 'Louis', NULL, 'USA');
INSERT INTO Plyty (Id_Plyty, Tytul, Rok, Id_Rodzaju) VALUES ('P0003', 'Ella i Louis Again', 2003, 'J');
INSERT INTO Plyty_Wykonawcy (Id_Plyty, Id_Wykonawcy) VALUES ('P0003', 'W04');
INSERT INTO Plyty_Wykonawcy (Id_Plyty, Id_Wykonawcy) VALUES ('P0003', 'W05');

ALTER TABLE Wykonawcy ADD COLUMN KTO varchar(1) CHECK (KTO IN ('K', 'M', 'Z'));

UPDATE Wykonawcy
SET KTO = 'K'
WHERE
Id_Wykonawcy IN ('W02', 'W04');

UPDATE Wykonawcy
SET KTO = 'M'
WHERE
Id_Wykonawcy IN ('W03', 'W05');

UPDATE Wykonawcy
SET KTO = 'Z'
WHERE
Id_Wykonawcy IN ('W01');

ALTER TABLE Plyty ADD COLUMN Cena DECIMAL(10,2);