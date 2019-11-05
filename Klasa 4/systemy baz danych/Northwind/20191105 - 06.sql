SELECT
    YEAR(OrderDate),
    MONTH(OrderDate),
    COUNT(*)
FROM
    orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
WITH ROLLUP;

SELECT
    YEAR(OrderDate),
    MONTHNAME(OrderDate),
    COUNT(*)
FROM
    orders
GROUP BY YEAR(OrderDate), MONTHNAME(OrderDate)
WITH ROLLUP;