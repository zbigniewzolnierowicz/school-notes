-- Olejki, których cena za opakowanie jest większa niż średnia cena olejków produkowanych z drzew

SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    IDOlejku IN (
        SELECT IDOlejku
        FROM olejkiceny
        WHERE Cena > (
            SELECT AVG(Cena)
            FROM olejkiceny
            WHERE IDOlejku IN (
                SELECT IDOlejku
                FROM olejki
                WHERE IDTypuRosliny = (
                    SELECT IDTypuRosliny
                    FROM roslinytypy
                    WHERE TypRosliny = 'drzewo'
                )
            )
        )
    )
