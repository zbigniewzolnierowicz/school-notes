SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    LEFT(NazwaOlejku, 1) BETWEEN 'D' AND 'L';

SELECT
    NazwaOlejku
FROM
    olejki
WHERE
    NazwaOlejku BETWEEN 'D%' AND 'M%';