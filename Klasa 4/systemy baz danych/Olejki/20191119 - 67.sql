-- Wypisz te olejki, które są produkowane z takiego samego składnika roślinnego co Majeranek

SELECT NazwaOlejku
FROM olejki
WHERE NazwaOlejku != 'Majeranek' AND IDSkladnikaRosliny = (
        SELECT IDSkladnikaRosliny
        FROM olejki
        WHERE NazwaOlejku = 'Majeranek'
    )