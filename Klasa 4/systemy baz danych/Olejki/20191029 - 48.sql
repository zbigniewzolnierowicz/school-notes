SELECT
    NazwaOlejku,
    COUNT(oz.IDZapachu)
FROM
    olejki o
    INNER JOIN
    olejkizapachy oz on o.IDOlejku = oz.IDOlejku
GROUP BY o.IDOlejku
HAVING COUNT(oz.IDZapachu) = 2