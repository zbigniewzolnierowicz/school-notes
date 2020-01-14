SELECT
    Title 'Stanowisko',
    ROUND(AVG((TIMESTAMPDIFF(YEAR, BirthDate, CURDATE())))) 'Średni wiek'
FROM
    employees
GROUP BY 1;