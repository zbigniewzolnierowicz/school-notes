SELECT
    NazwaOlejku 'Nazwa',
    CAST(ROUND((Cena / Objetosc_ml), 2) AS DECIMAL(4, 2)) 'Cena za 1ml'
FROM
    olejki o
    INNER JOIN
    olejkiceny oc
        ON
            o.IDOlejku = oc.IDOlejku;