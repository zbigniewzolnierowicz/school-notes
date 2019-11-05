SELECT
    Ostrzezenie,
    COUNT(o.IDOlejku)
FROM
    ostrzezenia ost
    LEFT JOIN
    olejkiostrzezenia oo on ost.IDOstrzezenia = oo.IDOstrzezenia
    LEFT JOIN
    olejki o ON o.IDOlejku = oo.IDOlejku
GROUP BY
    Ostrzezenie
HAVING
    COUNT(o.IDOlejku) >= 5;