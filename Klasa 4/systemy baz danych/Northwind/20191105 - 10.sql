SELECT
    DAYNAME(CURDATE()) 'out'
UNION
SELECT
    DAYNAME(CURDATE() + 3)
UNION
SELECT
    MONTHNAME(CURDATE())
UNION
SELECT
    YEAR(CURDATE())
