SELECT
    Ostrzezenie,
    NazwaOlejku,
    Opis
FROM
    olejki o
    LEFT JOIN
    olejkiostrzezenia oo on o.IDOlejku = oo.IDOlejku
    LEFT JOIN
        ostrzezenia os on oo.IDOstrzezenia = os.IDOstrzezenia
ORDER BY
    Ostrzezenie DESC,
    NazwaOlejku;