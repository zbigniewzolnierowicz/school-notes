SELECT
    TypRosliny,
    CAST(ROUND(AVG(Cena), 2) AS DECIMAL(5, 2)) 'średnia'
FROM
    olejki o
    INNER JOIN
    olejkiceny oc on o.IDOlejku = oc.IDOlejku
    INNER JOIN
    roslinytypy rt on o.IDTypuRosliny = rt.IDTypuRosliny
GROUP BY
    TypRosliny
HAVING AVG(Cena) < (
    SELECT
        AVG(Cena)
    FROM
        olejki o
        INNER JOIN
        olejkiceny oc on o.IDOlejku = oc.IDOlejku
    WHERE
        IDTypuRosliny = (
            SELECT
                IDTypuRosliny
            FROM
                roslinytypy
            WHERE
                TypRosliny = 'krzew'
        )
    GROUP BY IDTypuRosliny
)