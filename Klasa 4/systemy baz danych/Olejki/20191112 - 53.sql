SELECT
    Stezenie, IDOlejku
FROM
    olejkistezenia os
WHERE
    Stezenie >= ANY (
        SELECT
            Stezenie
        FROM
            olejkistezenia os
        WHERE
            IDOlejku IN (
                SELECT
                    IDOlejku
                FROM
                    olejki
                WHERE
                    NazwaOlejku IN ('Cynamon', 'Eukaliptus', 'Majeranek')
    )
)
ORDER BY
    1 DESC