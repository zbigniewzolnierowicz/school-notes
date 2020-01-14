SELECT
    NazwaOlejku AS 'Nazwa olejku',
    DataProdukcji AS 'Data produkcji',
    MONTH(DataProdukcji) AS 'Miesiąc produkcji',
    FLOOR(DATEDIFF(NOW(), DataProdukcji) / 7) AS 'Ile tygodni od produkcji',
    DATEDIFF(NOW(), DataProdukcji)AS 'Ile dni od produkcji'
FROM
    olejki;