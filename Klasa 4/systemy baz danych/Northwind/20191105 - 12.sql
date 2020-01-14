SELECT
    FirstName,
    LastName
FROM
    employees e
    INNER JOIN
    (
        SELECT
            MAX(TIMESTAMPDIFF(YEAR, BirthDate, CURDATE())) max
        FROM
            employees
        ) maxbirth
    ON TIMESTAMPDIFF(YEAR, BirthDate, CURDATE()) = maxbirth.max