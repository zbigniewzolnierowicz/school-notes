SELECT
    SkladnikRosliny,
    (CAST(AVG(Cena) AS DECIMAL(65,2))) AS 'Średnia cena'
FROM
    olejki o
    LEFT JOIN
    olejkiceny oc on o.IDOlejku = oc.IDOlejku
    LEFT JOIN
    roslinyskladniki r on o.IDSkladnikaRosliny = r.IDSkladnikaRosliny
WHERE
    r.SkladnikRosliny IN ('Kwiaty', 'Żywica')
GROUP BY
    r.SkladnikRosliny;