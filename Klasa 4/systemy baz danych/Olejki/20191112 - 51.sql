SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    IDTypuRosliny = (
        SELECT
            IDTypuRosliny
        FROM
            olejki
        WHERE NazwaOlejku = 'cynamon'
    )
    AND olejki.olejki.IDSkladnikaRosliny = (
        SELECT
            IDSkladnikaRosliny
        FROM
            olejki
        WHERE
            NazwaOlejku = 'cynamon'
    );