-- Wyświetl wszystkie olejki, które mają stężenie poniżej średniej

SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    IDOlejku in (
        SELECT IDOlejku
        FROM olejkistezenia
        WHERE Stezenie < (
            SELECT AVG(Stezenie)
            FROM olejkistezenia
        )
    )