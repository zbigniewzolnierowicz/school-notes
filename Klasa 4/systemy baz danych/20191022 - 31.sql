SELECT
    o.NazwaOlejku AS 'Nazwa olejku',
    COUNT(oo.IDOstrzezenia) AS 'Liczba ostrzeżeń'
FROM
    olejki o
    LEFT JOIN
    olejkiostrzezenia oo on o.IDOlejku = oo.IDOlejku
GROUP BY
    o.IDOlejku
ORDER BY 2 DESC;