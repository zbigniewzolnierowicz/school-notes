SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    NazwaOlejku <> 'imbir'
AND
    IDOlejku IN
    (SELECT
        IDOlejku
    FROM
        olejkistezenia os
    WHERE
        Stezenie = (
            SELECT
                Stezenie
            FROM
                olejkistezenia
            WHERE
                IDOlejku = (
                    SELECT
                        IDOlejku
                    FROM
                        olejki
                    WHERE
                        NazwaOlejku = 'imbir'
                    )
            )
    );