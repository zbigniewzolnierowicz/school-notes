SELECT
    COUNT(o.IDOlejku) AS 'Ilość bez opisu'
FROM
    olejki o
    LEFT JOIN olejkizapachy oz on o.IDOlejku = oz.IDOlejku
WHERE oz.IDZapachu IS NULL
GROUP BY oz.IDZapachu;