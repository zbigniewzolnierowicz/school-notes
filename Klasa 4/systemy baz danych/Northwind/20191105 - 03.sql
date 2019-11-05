SELECT
    FLOOR(AVG((YEAR(CURDATE()) - YEAR(BirthDate)))) 'Średni wiek'
FROM
     employees;

SELECT
    FLOOR(AVG((YEAR(NOW()) - YEAR(BirthDate)))) 'Średni wiek'
FROM
     employees;

SELECT
    FLOOR(AVG(TIMESTAMPDIFF(YEAR, BirthDate, CURDATE()))) 'Średni wiek'
FROM
     employees;

SELECT
    FLOOR(AVG((DATEDIFF(CURDATE(), BirthDate) / 365) - 0.5)) 'Średni wiek'
FROM
     employees;