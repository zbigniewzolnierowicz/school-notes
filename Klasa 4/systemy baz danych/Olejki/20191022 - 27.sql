SELECT
    COUNT(oz.IDOlejku) AS 'Ilość słodkich olejków'
FROM
    olejki o
    LEFT JOIN olejkizapachy oz on o.IDOlejku = oz.IDOlejku
    LEFT JOIN zapachy z on oz.IDZapachu = z.IDZapachu
GROUP BY Zapach
HAVING Zapach = 'słodki';