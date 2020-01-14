-- Typy roślin, z których nie są produkowane żadne olejki

SELECT
    TypRosliny
FROM
    roslinytypy
WHERE
    IDTypuRosliny NOT IN (
        SELECT IDTypuRosliny
        FROM olejki
)