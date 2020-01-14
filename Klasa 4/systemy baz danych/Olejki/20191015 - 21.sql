SELECT
    NazwaOlejku
FROM
    olejki o
    LEFT JOIN
    olejkiostrzezenia oo on o.IDOlejku = oo.IDOlejku
WHERE
    IDOstrzezenia IS NULL