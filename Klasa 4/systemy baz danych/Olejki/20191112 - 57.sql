SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    IDOlejku IN (
        SELECT
            IDOlejku
        FROM
            olejkizapachy
        WHERE
            NazwaOlejku <> 'pomarańcza' AND
            IDZapachu IN (
                SELECT
                    IDZapachu
                FROM
                    olejkizapachy
                WHERE
                    IDOlejku = (
                        SELECT
                            IDOlejku
                        FROM
                            olejki
                        WHERE
                            NazwaOlejku = 'pomarańcza'
            )
        )
    )
