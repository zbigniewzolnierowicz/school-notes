SELECT
    NazwaOlejku AS 'Nazwa olejku',
    SkladnikRosliny AS 'Składnik rośliny'
FROM
    olejki o
    INNER JOIN
    roslinyskladniki rs
    ON
        o.IDSkladnikaRosliny = rs.IDSkladnikaRosliny
WHERE
    SkladnikRosliny = 'Liście'
    OR
    SkladnikRosliny = 'Cała roślina'
ORDER BY SkladnikRosliny;