SELECT
    TypRosliny 'Typ rośliny',
    (CAST(ROUND(AVG(Cena), 2) AS DECIMAL(5,2))) 'Średnia cena'
FROM
    olejki o
    INNER JOIN
    olejkiceny oc
        ON
            o.IDOlejku = oc.IDOlejku
    INNER JOIN
    roslinytypy rt
        ON
            o.IDTypuRosliny = rt.IDTypuRosliny
GROUP BY
    TypRosliny
HAVING AVG(Cena) < 30;