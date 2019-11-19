-- Wyświetl nazwy tych olejków, które są opisane taką samą ilością zapachów co olejek pieprz czarny

SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    NazwaOlejku != 'paczula'
    AND
    IDOlejku IN (
        SELECT
            IDOlejku
        FROM
            olejkizapachy
        GROUP BY
            IDOlejku
        HAVING COUNT(IDZapachu) >= (
            SELECT
                COUNT(IDZapachu)
            FROM
                olejkizapachy
            WHERE
                IDOlejku = (
                    SELECT
                        IDOlejku
                    FROM
                        olejki
                    WHERE
                        NazwaOlejku = 'paczula'
                )
        )
    )