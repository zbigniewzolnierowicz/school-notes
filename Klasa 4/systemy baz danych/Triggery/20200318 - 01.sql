CREATE DATABASE highschool;
USE highschool;

/* Create the schema for our tables */
create table Highschooler(ID int, name text, grade int);
create table Friend(ID1 int, ID2 int);
create table Likes(ID1 int, ID2 int);

/* Populate the tables with our data */
insert into Highschooler values (1510, 'Jordan', 9);
insert into Highschooler values (1689, 'Gabriel', 9);
insert into Highschooler values (1381, 'Tiffany', 9);
insert into Highschooler values (1709, 'Cassandra', 9);
insert into Highschooler values (1101, 'Haley', 10);
insert into Highschooler values (1782, 'Andrew', 10);
insert into Highschooler values (1468, 'Kris', 10);
insert into Highschooler values (1641, 'Brittany', 10);
insert into Highschooler values (1247, 'Alexis', 11);
insert into Highschooler values (1316, 'Austin', 11);
insert into Highschooler values (1911, 'Gabriel', 11);
insert into Highschooler values (1501, 'Jessica', 11);
insert into Highschooler values (1304, 'Jordan', 12);
insert into Highschooler values (1025, 'John', 12);
insert into Highschooler values (1934, 'Kyle', 12);
insert into Highschooler values (1661, 'Logan', 12);

insert into Friend values (1510, 1381);
insert into Friend values (1510, 1689);
insert into Friend values (1689, 1709);
insert into Friend values (1381, 1247);
insert into Friend values (1709, 1247);
insert into Friend values (1689, 1782);
insert into Friend values (1782, 1468);
insert into Friend values (1782, 1316);
insert into Friend values (1782, 1304);
insert into Friend values (1468, 1101);
insert into Friend values (1468, 1641);
insert into Friend values (1101, 1641);
insert into Friend values (1247, 1911);
insert into Friend values (1247, 1501);
insert into Friend values (1911, 1501);
insert into Friend values (1501, 1934);
insert into Friend values (1316, 1934);
insert into Friend values (1934, 1304);
insert into Friend values (1304, 1661);
insert into Friend values (1661, 1025);
insert into Friend select ID2, ID1 from Friend;

insert into Likes values(1689, 1709);
insert into Likes values(1709, 1689);
insert into Likes values(1782, 1709);
insert into Likes values(1911, 1247);
insert into Likes values(1247, 1468);
insert into Likes values(1641, 1468);
insert into Likes values(1316, 1304);
insert into Likes values(1501, 1934);
insert into Likes values(1934, 1501);
insert into Likes values(1025, 1101);

-- 1--------------------------------------------------
-- Stwórz wyzwalacz, przy użyciu którego nowi uczniowie szkoły średniej będą automatycznie nośić nazwę (name) - 'Friendly' tak jak wszyscy inni w ich roczniku. Zatem, po uruchomieniu wyzwalacza, otrzymamy ('Freindly', A) w tabeli Like dla każdego ucznia szkoły średniej A w tym samym roczniku
-- co 'Freindly'

CREATE OR REPLACE TRIGGER ins_friendly BEFORE INSERT ON Highschooler FOR EACH ROW
    BEGIN
        IF NEW.name = 'Friendly' THEN
            INSERT INTO Likes (ID1, ID2) SELECT NEW.ID, h.ID FROM Highschooler h WHERE h.grade = NEW.grade;
            INSERT INTO Likes (ID1, ID2) SELECT h.ID, NEW.ID FROM Highschooler h WHERE h.grade = NEW.grade;
        END IF;
    END;

-- 2--------------------------------------------------
-- Stwórz jeden lub więcej wyzwalaczy do zarządzania atrybutem rocznika nowych uczniów szkoły średniej. Wytycznie wyzwalacza - jeżeli wartość będzie niższa niż 9 lub większa niż 12, zmieniaj wartość na NULL. Z drugiej strony, jeżeli występuje wartość NULL dla rocznika, zmień ją na 9.

CREATE OR REPLACE TRIGGER ins_between_nine_and_twelve BEFORE INSERT ON Highschooler FOR EACH ROW
    BEGIN
       IF NEW.grade < 9 OR NEW.grade > 12 THEN
           SET NEW.grade = NULL;
           END IF;
       IF NEW.grade = NULL THEN
           SET NEW.grade = 9;
       end if;
    END;

-- 3--------------------------------------------------
-- Stwórz jeden lub więcej wyzwalaczy do zarządzania symertią w relacjach między przyjaciółmi (Freind). Zatem, jeżeli (A,B) zostanie skasowany z  'Friend', to wtedy (B,A) powinno zostać także wykasowane.
-- Jeżeli (A,B) zostanie wstawione w 'Friend', wtedy (B,A) powinno zostać wstawione także. Nie należy rzejmować się aktualizacją tabeli Friend.

CREATE OR REPLACE TRIGGER ins_update_friends BEFORE INSERT ON Friend FOR EACH ROW
    BEGIN
        INSERT INTO Friend (ID1, ID2) SELECT NEW.ID2, NEW.ID1;
    END;

CREATE OR REPLACE TRIGGER del_update_friends BEFORE DELETE ON Friend FOR EACH ROW
    BEGIN
        DELETE FROM Friend WHERE ID1 = OLD.ID2 AND ID2 = OLD.ID1
    END;

-- 4--------------------------------------------------
-- Stwórz wyzwalacz, który automatycznie kasuje uczniów - absolwentów, gdy skończą szkołę , tj., gdy ich rocznik zostanie zaktualizowanay i przekroczy 12.

CREATE OR REPLACE TRIGGER upd_alumni BEFORE UPDATE ON Highschooler FOR EACH ROW
    BEGIN
       IF NEW.grade > 12 THEN
           DELETE FROM Highschooler WHERE ID = NEW.ID;
        END IF;
    END;

-- 5--------------------------------------------------
-- Stwórz wyzwalacz, który automatycznie kasuje uczniów - absolwentów, gdy skończą szkołę, tj., gdy ich rocznik zostanie zaktualizowanay i przekroczy 12.  (zad. 4).
-- Ponadto, stwórz wyzwalacz , który w momencie przeniesienia ucznia na wyższy rocznik przenosi także jego/jej kolegów.

CREATE OR REPLACE TRIGGER upd_friends_grade BEFORE UPDATE ON Highschooler FOR EACH ROW
    BEGIN
       UPDATE Highschooler
        SET grade = NEW.grade
        WHERE NOT ID = NEW.ID;
    END;

-- 6--------------------------------------------------
-- Stwóz wyzwalacz z następującym działaniem: Jeśli A lubi B ale zostaje zaktualizowany do A lubiącego C, a B i C są przyjaciółmi 'friends', to wtedy B i C przestają być przyjaciółmi 'friends'.
-- Nie zapomnij kasować przyjaźni ui upewnij się, że wyzwalacz tylko uruchomi się gdy lubiana "liked" (ID2) osoba zostaje zmieniona, ale lubienie "liking" (ID1) osoby nie zostaje zmienione.

CREATE OR REPLACE TRIGGER upd_likes BEFORE UPDATE ON Likes FOR EACH ROW
    BEGIN
        IF OLD.ID1 = NEW.ID1 AND NOT OLD.ID2 = OLD.ID1 THEN
            SET @A = OLD.ID1;
            SET @B = OLD.ID2;
            SET @C = NEW.ID2;
            IF (SELECT ID1, ID2 FROM Friend WHERE ID1 = @B AND ID2 = @C) IS NOT NULL THEN
                DELETE FROM Friend WHERE ID1 = @B AND ID2 = @C;
            end if;
        end if;
    end;