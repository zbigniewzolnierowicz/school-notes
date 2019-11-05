SELECT
    rs.SkladnikRosliny,
    MAX(os.Stezenie) as 'Najwyższe stężenie'
FROM
    olejki o
    LEFT JOIN
    olejkistezenia os on o.IDOlejku = os.IDOlejku
    LEFT JOIN
    roslinyskladniki rs on o.IDSkladnikaRosliny = rs.IDSkladnikaRosliny
GROUP BY
    rs.SkladnikRosliny