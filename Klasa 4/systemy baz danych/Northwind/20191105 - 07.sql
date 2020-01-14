SELECT
    YEAR(OrderDate) 'Rok',
    MONTHNAME(OrderDate) 'Miesiąc',
    ROUND(SUM(Quantity * UnitPrice), 2) 'Sprzedaż w miesiącu'
FROM
    orders o
    INNER JOIN
    `order details` od ON o.OrderID = od.OrderID
WHERE
    OrderDate BETWEEN '2013.01.01' AND '2013.12.31'
GROUP BY
    YEAR(OrderDate), MONTHNAME(OrderDate)
WITH ROLLUP;