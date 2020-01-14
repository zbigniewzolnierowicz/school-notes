-- Typy roślin, z których nie są produkowane żadne olejki

SELECT
    SkladnikRosliny
FROM
    roslinyskladniki
WHERE
    NOT EXISTS (
        SELECT IDSkladnikaRosliny
        FROM olejki
        WHERE
            roslinyskladniki.IDSkladnikaRosliny = olejki.IDSkladnikaRosliny
    )