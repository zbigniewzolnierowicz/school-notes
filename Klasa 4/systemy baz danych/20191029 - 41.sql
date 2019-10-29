SELECT
    MAX(CAST(ROUND((Cena / Objetosc_ml), 2) AS DECIMAL(4, 2))) 'Max cena za 1ml',
    MIN(CAST(ROUND((Cena / Objetosc_ml), 2) AS DECIMAL(4, 2))) 'Min cena za 1ml',
    AVG(CAST(ROUND((Cena / Objetosc_ml), 2) AS DECIMAL(4, 2))) 'Średnia cena za 1ml'
FROM
    olejki o
    INNER JOIN
    olejkiceny oc
        ON
            o.IDOlejku = oc.IDOlejku;