SELECT
    Year(OrderDate) 'Rok zamówienia',
    ROUND(SUM(Quantity * UnitPrice), 2) 'Wartość zamówień'
FROM
    orders
    LEFT JOIN `order details` od on orders.OrderID = od.OrderID
GROUP BY 1;