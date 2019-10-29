SELECT
    SUM(Objetosc_ml * IloscOpakowan) 'Ilość olejku'
FROM
    olejki o
    INNER JOIN
        olejkizapachy oz ON o.IDOlejku = oz.IDOlejku
    INNER JOIN
        zapachy z on oz.IDZapachu = z.IDZapachu
    INNER JOIN
        olejkiceny oc ON o.IDOlejku = oc.IDOlejku
    INNER JOIN
        olejkiilosci oi ON o.IDOlejku = oi.IDOlejku
WHERE
    Zapach = 'miętowy'
GROUP BY
    Zapach;