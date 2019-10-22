SELECT
    TypRosliny AS 'Typ rośliny',
    SUM(oi.IloscOpakowan)
FROM
    olejki o
    LEFT JOIN
    olejkiilosci oi on o.IDOlejku = oi.IDOlejku
    LEFT JOIN
    roslinytypy rt on o.IDTypuRosliny = rt.IDTypuRosliny
WHERE
    TypRosliny IN ('Krzew', 'Drzewo')
GROUP BY
    TypRosliny