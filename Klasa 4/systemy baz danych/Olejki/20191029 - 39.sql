SELECT
    NazwaOlejku 'Nazwa',
    Cena 'Cena',
    IloscOpakowan 'Ilość',
    (IloscOpakowan * Cena) 'Wartość'
FROM
    olejki o
        INNER JOIN
    olejkiceny oc
        ON
            o.IDOlejku = oc.IDOlejku
        INNER JOIN
    olejkiilosci oi
        ON
            o.IDOlejku = oi.IDOlejku
ORDER BY 4 DESC;