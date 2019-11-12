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
            Cena = (
                SELECT
                    Cena
                FROM
                    olejkiceny
                WHERE
                    IDOlejku = 9
                )
)