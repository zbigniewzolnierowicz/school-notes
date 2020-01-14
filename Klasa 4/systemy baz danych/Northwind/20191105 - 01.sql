SELECT
    LastName 'Nazwisko',
    FirstName 'Imię',
    (YEAR(NOW())-YEAR(BirthDate)) 'Wiek'
FROM
    employees
ORDER BY 3 DESC, 2;

SELECT
    LastName 'Nazwisko',
    FirstName 'Imię',
    FLOOR(DATEDIFF(CURDATE(), BirthDate)/365) 'Wiek'
FROM
    employees
ORDER BY 3 DESC, 2;

SELECT
    LastName 'Nazwisko',
    FirstName 'Imię',
    TIMESTAMPDIFF(YEAR, BirthDate, CURDATE()) 'Wiek'
FROM
    employees
ORDER BY 3 DESC, 2;
