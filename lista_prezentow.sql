CREATE DATABASE lista_prezentów;

CREATE TABLE lista_prezentów.prezenty_2020 (
ID INTEGER,
imię_obdarowanego TEXT,
pomysł_na_prezent TEXT,
cena DOUBLE,
miejsce_zakupu TEXT
);

INSERT INTO prezenty_2020
VALUES (1, 'Kryspin', 'Rower', '1999.99', 'Sklep rowerowy "GUSTAW"'),
	(2, 'Michalina', 'Buty do tańca czarne rozmiar 37', '679.99', 'Stakato'),
    (3, 'Patryk', 'Rolki', '320.40', 'Decatholn'),
    (4, 'Wojtek', 'Śpiwór', '299.99', 'Decathlon'),
    (5, 'Ania', 'Wycieczka do Paryża', '4200', 'Szkoła');
    
SELECT *
FROM prezenty_2020;

UPDATE prezenty_2020
SET pomysł_na_prezent = 'Rower'
WHERE ID = 3;

SELECT *
FROM prezenty_2020
WHERE ID = 3;

DELETE FROM prezenty_2020
WHERE ID = 1;

SELECT *
FROM prezenty_2020;

ALTER TABLE prezenty_2020
DROP COLUMN miejsce_zakupu;

SELECT imię_obdarowanego
FROM prezenty_2020
WHERE ID IN (3,4,5);