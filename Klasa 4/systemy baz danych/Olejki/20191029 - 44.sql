SELECT
    TypRosliny 'Typ rośliny',
    (CAST(AVG(Stezenie) AS DECIMAL(4, 2))) AS 'Średnie stężenie'
FROM
    olejki o
    INNER JOIN
    olejkistezenia os
        ON
            os.IDOlejku = o.IDOlejku
    INNER JOIN
    roslinytypy rt
        ON
            o.IDTypuRosliny = rt.IDTypuRosliny
GROUP BY
    TypRosliny
HAVING
    AVG(Stezenie) > 0.4;