-- Olejki, których ilość opakowań jest powyżej średniej

SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    IDOlejku IN (
        SELECT IDOlejku
        FROM olejkiilosci
        WHERE IloscOpakowan > (
            SELECT AVG(IloscOpakowan)
            FROM olejkiilosci
        )
    )
