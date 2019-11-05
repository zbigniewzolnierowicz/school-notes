SELECT
    Zapach,
    MAX(Objetosc_ml * IloscOpakowan) AS 'Łączna ilość ml'
FROM
    olejki o
    INNER JOIN
    olejkizapachy oz ON o.IDOlejku = oz.IDOlejku
    INNER JOIN
    zapachy z on oz.IDZapachu = z.IDZapachu
    INNER JOIN
    olejkiceny oc on o.IDOlejku = oc.IDOlejku
    INNER JOIN
    olejkiilosci oi on o.IDOlejku = oi.IDOlejku
GROUP BY Zapach
ORDER BY 2 DESC
LIMIT 5;