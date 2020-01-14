SELECT
    SkladnikRosliny AS 'Składnik rośliny',
    SUM(Cena * IloscOpakowan) AS 'Wyrazenie'
FROM
    olejki o
    LEFT JOIN
    roslinyskladniki rs on o.IDSkladnikaRosliny = rs.IDSkladnikaRosliny
    LEFT JOIN
    olejkiilosci oi on o.IDOlejku = oi.IDOlejku
    LEFT JOIN
    olejkiceny oc on o.IDOlejku = oc.IDOlejku
GROUP BY
    SkladnikRosliny
HAVING Wyrazenie <= 5000