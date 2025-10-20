CREATE DATABASE lista_pracowników;

CREATE TABLE pracownicy (
ID INTEGER PRIMARY KEY,
imię TEXT NOT NULL,
nazwisko TEXT NOT NULL,
stanowisko TEXT NOT NULL,
dział TEXT NOT NULL);

INSERT INTO pracownicy (ID, imię, nazwisko, stanowisko, dział)
VALUES (1, 'Artur', 'Grabie', 'CEO', 'IT'),
	(2, 'Szymon', 'Błyszczyk', 'Główy specjalista', 'Wnioski Unijne'),
    (3, 'Tomasz', 'Nicpoń', 'Programista', 'IT'),
    (4, 'Karolina', 'Ciasto', 'Analityk', 'Wnioski Unijne'),
    (5, 'Katarzyna', 'Grabie', 'Konsultantka', 'Wnioski Unijne');
    
SELECT *
FROM pracownicy;

ALTER TABLE pracownicy
ADD COLUMN data_zatrudnienia DATE NULL DEFAULT NULL;

INSERT INTO pracownicy (ID, imię, nazwisko, stanowisko, dział, data_zatrudnienia)
VALUES (6, 'Monika', 'Zalewska', 'Specjalistka ds. social mediów', 'marketing', '2025-10-20');

SELECT *
FROM pracownicy;

UPDATE pracownicy 
SET data_zatrudnienia = CASE
	WHEN ID = 1 THEN '2016-04-25'
    WHEN ID = 2 THEN '2018-05-16'
    WHEN ID = 3 THEN '2019-06-06'
    WHEN ID = 4 THEN '2020-09-01'
    WHEN ID = 5 THEN '2021-03-02'
    END
    WHERE ID IN (1,2,3,4,5);

SELECT *
FROM pracownicy;