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
            Cena > (
                SELECT
                    AVG(Cena)
                FROM
                    olejkiceny
            )
)