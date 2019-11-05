SELECT
    SkladnikRosliny, COUNT(o.IDOlejku)
FROM
    roslinyskladniki rs
    LEFT JOIN olejki o on rs.IDSkladnikaRosliny = o.IDSkladnikaRosliny
WHERE o.IDOlejku IS NOT NULL
GROUP BY SkladnikRosliny;