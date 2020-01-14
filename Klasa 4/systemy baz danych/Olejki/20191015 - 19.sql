SELECT
    TypRosliny
FROM
    roslinytypy rt
    LEFT JOIN
        olejki o on rt.IDTypuRosliny = o.IDTypuRosliny
WHERE
    IDOlejku IS NULL;