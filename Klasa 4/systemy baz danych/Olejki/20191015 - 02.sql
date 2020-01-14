SELECT
    NazwaLacinska
FROM
    olejki
WHERE
    -- LEFT(NazwaOlejku, 1) = 'D';
    NazwaOlejku LIKE 'D%';