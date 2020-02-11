USE northwind_mysql;

-- 1

CREATE TABLE Empl LIKE employees;
INSERT INTO Empl SELECT * FROM employees;

-- 2

UPDATE Empl
SET FirstName = CONCAT(FirstName, ' A.')
WHERE EmployeeID = 6;

-- 3

UPDATE Empl
SET LastName = 'Smith'
WHERE EmployeeID = 8;

-- 4

DELETE FROM Empl ORDER BY BirthDate LIMIT 2;

-- 5

TRUNCATE TABLE Empl;
DROP TABLE Empl;