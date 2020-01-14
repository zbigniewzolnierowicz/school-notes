SELECT
    SkladnikRosliny 'Składnik rośliny',
    CAST((SUM(IloscOpakowan * Cena)) AS DECIMAL(63, 2)) 'Suma wartości olejków z liści'
FROM
    olejki o
INNER JOIN
    roslinyskladniki rs on o.IDSkladnikaRosliny = rs.IDSkladnikaRosliny
INNER JOIN
    olejkiilosci oi on o.IDOlejku = oi.IDOlejku
INNER JOIN
    olejkiceny oc on o.IDOlejku = oc.IDOlejku
WHERE
    SkladnikRosliny = 'Liście'
GROUP BY
    SkladnikRosliny;