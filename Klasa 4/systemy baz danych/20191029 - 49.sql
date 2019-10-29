SELECT
    NazwaOlejku 'Nazwa olejku'
FROM
    olejki o
    INNER JOIN
    olejkiostrzezenia oo on o.IDOlejku = oo.IDOlejku
    INNER JOIN
    ostrzezenia ost ON oo.IDOstrzezenia = ost.IDOstrzezenia
WHERE
    Ostrzezenie = 'Epilepsja'