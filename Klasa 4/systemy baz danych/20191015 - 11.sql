SELECT
    IDOstrzezenia AS 'ID Ostrzeżenia',
    Opis
FROM
    ostrzezenia
WHERE
    Opis NOT LIKE 'N%'
    AND
    IDOstrzezenia > 7;