SELECT
    NazwaLacinska
FROM
    olejki o
    INNER JOIN
    roslinyskladniki r ON o.IDSkladnikaRosliny = r.IDSkladnikaRosliny
    INNER JOIN
    roslinytypy rt on o.IDTypuRosliny = rt.IDTypuRosliny
WHERE
    SkladnikRosliny = 'Kwiaty'
    AND
    TypRosliny = 'Krzew';