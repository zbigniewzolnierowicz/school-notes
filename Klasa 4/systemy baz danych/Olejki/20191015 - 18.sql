SELECT
    NazwaOlejku
FROM
    olejki o
    INNER JOIN
    roslinytypy rt ON o.IDTypuRosliny = rt.IDTypuRosliny
WHERE
    NazwaOlejku LIKE 'M%'
    AND
    TypRosliny = 'Drzewo';