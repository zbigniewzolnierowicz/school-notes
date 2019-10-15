SELECT
    IDOlejku,
    NazwaLacinska AS 'Nazwa Łacińska',
    NazwaOlejku
FROM
    olejki
WHERE
    LEFT(NazwaOlejku, 1) BETWEEN 'A' AND 'C'
ORDER BY
         1 DESC;