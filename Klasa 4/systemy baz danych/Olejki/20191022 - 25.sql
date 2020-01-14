SELECT
    UPPER(NazwaOlejku) AS 'NAZWA OLEJKU',
    LOWER(NazwaLacinska) AS 'nazwa łacińska',
    DAY(DataProdukcji) AS 'Dzień produkcji',
    MONTH(DataProdukcji) AS 'Miesiąc produkcji'
FROM
    olejki;