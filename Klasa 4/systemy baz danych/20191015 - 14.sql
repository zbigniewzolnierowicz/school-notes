SELECT
    Objetosc_ml AS 'Objętość',
    COUNT(IDOlejku) AS 'Ile',
    COUNT(IDOlejku) / (SELECT
                              COUNT(*)
                        FROM
                            olejkiceny) * 100 AS 'Procent'
FROM
    olejkiceny
GROUP BY Objetosc_ml;