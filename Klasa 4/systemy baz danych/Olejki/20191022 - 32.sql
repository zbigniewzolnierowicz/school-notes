SELECT
    r.SkladnikRosliny AS 'Składnik rosliny',
    ROUND(AVG(oc.Cena), 2) AS 'Średnia cena'
FROM
    olejki o
    LEFT JOIN
    roslinyskladniki r
    ON
    o.IDSkladnikaRosliny = r.IDSkladnikaRosliny
    LEFT JOIN
    olejkiceny oc
    ON
    o.IDOlejku = oc.IDOlejku
GROUP BY
    r.SkladnikRosliny