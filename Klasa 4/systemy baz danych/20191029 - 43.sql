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
WHERE
    TypRosliny = 'Krzew'
GROUP BY
    TypRosliny;