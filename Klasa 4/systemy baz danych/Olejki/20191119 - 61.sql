-- Olejki, których jest przynajmniej tyle co olejków: Imbir (IlośćOpakowań)

SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    NazwaOlejku != 'Imbir'
    AND
    IDOlejku IN (
        SELECT
            IDOlejku
        FROM
            olejkiilosci
        WHERE
            IloscOpakowan >= (
                SELECT
                    IloscOpakowan
                FROM
                    olejkiilosci
                WHERE
                    IDOlejku = (
                        SELECT
                            IDOlejku
                        FROM
                            olejki
                        WHERE
                            NazwaOlejku = 'Imbir'
                    )
            )
    )