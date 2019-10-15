SELECT
    NazwaOlejku,
    NazwaLacinska
FROM
    olejki o
    LEFT JOIN
    olejkizapachy oz on o.IDOlejku = oz.IDOlejku
    LEFT JOIN
    zapachy z on oz.IDZapachu = z.IDZapachu
WHERE
    Zapach = 'słodki';