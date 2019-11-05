SELECT
    NazwaOlejku,
    COUNT(och.IDCharakterystyki)
FROM
    olejki o
    LEFT JOIN
    olejkicharakterystyki och on o.IDOlejku = och.IDOlejku
GROUP BY NazwaOlejku
HAVING COUNT(och.IDCharakterystyki) >= 6
ORDER BY 2 DESC, 1;