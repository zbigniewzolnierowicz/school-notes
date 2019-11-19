-- Wyświetl nazwy tych olejków, których cena za opakowanie jest większa niż
-- średnia cena olejków produkowanych z typu rośliny - drzewo.
-- Wynik posortuj wg nazwy olejku

SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    IDOlejku IN (
        SELECT
            IDOlejku
        FROM
            olejkiceny
        WHERE
            cena > (
                SELECT
                    AVG(cena)
                FROM
                    olejkiceny
                WHERE
                    IDOlejku in (
                        SELECT
                            IDOlejku
                        FROM
                            olejki
                        WHERE
                            IDTypuRosliny = (
                                SELECT
                                    IDTypuRosliny
                                FROM
                                    roslinytypy
                                WHERE
                                    TypRosliny = 'Drzewo'
                            )
                    )
            )
    )
ORDER BY 1 DESC;