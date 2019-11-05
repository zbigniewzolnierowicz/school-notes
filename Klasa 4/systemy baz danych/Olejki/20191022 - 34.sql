SELECT
    o.NazwaOlejku,
    COUNT(oo.IDOstrzezenia) AS 'Liczba ostrzerzeń'
FROM
    olejki o
    LEFT JOIN
    olejkiostrzezenia oo on o.IDOlejku = oo.IDOlejku
GROUP BY
    o.NazwaOlejku
HAVING COUNT(oo.IDOstrzezenia) >= 2;