SELECT
    o.NazwaOlejku,
    COUNT(oz.IDZapachu)
FROM
    olejki o
    LEFT JOIN
    olejkizapachy oz on o.IDOlejku = oz.IDOlejku
GROUP BY
    o.IDOlejku
ORDER BY 2 DESC;