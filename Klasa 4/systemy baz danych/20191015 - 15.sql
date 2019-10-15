SELECT
    NazwaOlejku AS 'Nazwa olejku',
    SkladnikRosliny AS 'Składnik rośliny'
FROM
/*
    olejki
    INNER JOIN
    roslinyskladniki
    ON
        olejki.IDSkladnikaRosliny = roslinyskladniki.IDSkladnikaRosliny
*/
    olejki o
    INNER JOIN
    roslinyskladniki rs
    ON
        o.IDSkladnikaRosliny = rs.IDSkladnikaRosliny
WHERE
    SkladnikRosliny IN ('Liście', 'Cała roślina');