CREATE DATABASE moje_zainteresowania;

CREATE TABLE zainteresowania (
ID INTEGER PRIMARY KEY,
nazwa VARCHAR(255) UNIQUE,
opis VARCHAR(255) UNIQUE,
data_realizacji DATE NULL DEFAULT NULL
);

ALTER TABLE zainteresowania
MODIFY COLUMN ID INT NOT NULL AUTO_INCREMENT;

INSERT INTO zainteresowania (nazwa, opis)
VALUES ('taniec', 'zouk - taniec brazylijski'),
	('szydełkowanie', 'swetry i szaliki'),
    ('programowanie', 'byle nie w JAVIE'),
    ('chodzenie po górach', 'cel: zdobycie Korony Gór Polski'),
    ('tresowanie psów', 'z własnym się nie udało');

SELECT *
FROM zainteresowania;

INSERT INTO zainteresowania (ID, nazwa, opis, data_realizacji)
VALUES (6, 'gotowanie', 'zrobić kurs sushi', '2026-04-16');

UPDATE zainteresowania
SET data_realizacji = '2027-12-24'
WHERE ID = 4;

SELECT *
FROM zainteresowania;

DELETE FROM zainteresowania
WHERE nazwa IS NULL
OR nazwa = ' '
OR opis IS NULL
OR opis = ' '
OR data_realizacji IS NULL;

SELECT *
FROM zainteresowania;





