SELECT
    (FLOOR(DATEDIFF(CURDATE(), HireDate)/365)) 'Liczba przepracowanych lat',
    FirstName 'Imie',
    LastName 'Nazwisko'
FROM
     employees
ORDER BY 1 DESC
LIMIT 1;

SELECT
    (TIMESTAMPDIFF(YEAR, HireDate, CURDATE())) 'Liczba przepracowanych lat',
    FirstName 'Imie',
    LastName 'Nazwisko'
FROM
     employees
ORDER BY 1 DESC
LIMIT 1;