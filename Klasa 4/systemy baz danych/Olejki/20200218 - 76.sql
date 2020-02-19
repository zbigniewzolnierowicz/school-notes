USE northwind_mysql;

-- Stwórz raport pokazujący imię i nazwisko w jednej kolumnie oraz nr telefonu każdego z pracowników, klientów i zaopatrzeniowców

SELECT CONCAT(FirstName, ' ', LastName) AS 'Imie',
       HomePhone                        AS 'Telefon'
FROM employees
UNION
SELECT ContactName,
       Phone
FROM dbo_suppliers
UNION
SELECT ContactName,
       Phone
FROM customers;