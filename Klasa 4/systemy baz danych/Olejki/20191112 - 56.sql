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
            Objetosc_ml > (
                SELECT
                    MIN(Objetosc_ml)
                FROM
                olejkiceny
            )
    )