-- a
SELECT CONCAT(first_name, ' ', last_name) AS FULL_NAME
FROM batman;

-- b
SELECT CONCAT(gift, ' - ', price) AS CENNIK
FROM batman;

-- c
SELECT CONCAT(first_name, ' ', last_name, ' | ', gift, ' - ', price) AS OPIS
FROM batman;

-- d
SELECT UPPER(gift)
FROM batman;

-- e
SELECT LOWER(first_name)
FROM batman;

-- f
SELECT last_name, LENGTH(last_name) AS name_length
FROM batman;

-- g
SELECT LEFT(first_name, 2)
FROM batman;

-- h
SELECT first_name, last_name, 
CONCAT(LOWER(LEFT(first_name, 1)), LOWER(LEFT(last_name, 3))) 
AS login
FROM batman;
