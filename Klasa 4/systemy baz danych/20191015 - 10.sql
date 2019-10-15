SELECT
    NazwaOlejku AS 'Olejek'
FROM
     olejki
WHERE
   LEFT(NazwaOlejku, 1) BETWEEN 'A' AND 'G'
ORDER BY 1;