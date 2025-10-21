CREATE DATABASE Pracownicy;

CREATE TABLE Pracownicy.pracownicy (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
imię VARCHAR(50) NOT NULL,
nazwisko VARCHAR(100) NOT NULL,
wiek INT CHECK (wiek BETWEEN 18 AND 100),
kurs TEXT
);

INSERT INTO pracownicy (`ID`, `imię`, `nazwisko`, `wiek`, `kurs`)
VALUES
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', 'KAMIŃSKI', 34, 'Java'),
(7, 'Robert', 'LEWANDOWSKI', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, 'Anna', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, 'UX'),
(12, 'Robert', 'KOZŁOWSKI', 38, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, 'Patryk', 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrzej', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'ZIELIŃSKI', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

SELECT *
FROM pracownicy
WHERE wiek > 30;

SELECT *
FROM pracownicy
WHERE wiek < 30;

SELECT *
FROM pracownicy
WHERE nazwisko LIKE 'K%ki';

ALTER TABLE pracownicy
RENAME COLUMN ID TO NR;

SELECT *
FROM pracownicy
WHERE imię IS NULL OR imiĘ = ''
   OR nazwisko IS NULL OR nazwisko = ''
   OR wiek IS NULL
   OR kurs IS NULL OR kurs = '';
   
SELECT *
FROM pracownicy
WHERE kurs = 'Java';