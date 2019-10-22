SELECT
    NazwaOlejku as 'Nazwa olejku',
    DataProdukcji
FROM
    olejki
WHERE YEAR(DataProdukcji) = '2013';