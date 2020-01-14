SELECT
    CategoryName 'Nazwa kategorii',
    ProductName 'Nazwa produktu',
    ROUND(SUM((od.UnitPrice * od.Quantity) * (1 - od.Discount)), 2) 'Sprzedaż',
    CONCAT('Q', QUARTER(OrderDate)) 'Kwartał'
FROM
    categories c
    INNER JOIN
    products p on c.CategoryID = p.CategoryID
    INNER JOIN
    `order details` od on p.ProductID = od.ProductID
    INNER JOIN
    orders o on od.OrderID = o.OrderID
WHERE
    ShippedDate BETWEEN DATE('2014.01.01') AND DATE('2014.12.31')
GROUP BY 1, 2, 4
ORDER BY 1, 2, 4;