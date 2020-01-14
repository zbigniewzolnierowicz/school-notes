-- Olejki o cenie za opakowanie powyżej średniej

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
        )
    )
