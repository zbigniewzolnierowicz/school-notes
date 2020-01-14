-- Składniki roślin, z których nie są produkowane żadne olejki

SELECT
    SkladnikRosliny
FROM
    roslinyskladniki
WHERE
    IDSkladnikaRosliny NOT IN (
        SELECT IDSkladnikaRosliny
        FROM olejki
)