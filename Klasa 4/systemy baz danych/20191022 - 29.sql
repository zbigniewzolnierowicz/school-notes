SELECT
    Zapach,
    COUNT(o.IDOlejku)
FROM
    olejki o
    LEFT JOIN
    olejkizapachy oz on o.IDOlejku = oz.IDOlejku
    LEFT JOIN
    zapachy z on oz.IDZapachu = z.IDZapachu
GROUP BY Zapach
ORDER BY COUNT(o.IDOlejku) DESC;