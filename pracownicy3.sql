-- 1,2,3
TRUNCATE TABLE pracownicy;

INSERT INTO pracownicy (`ID`, `Imię`, `Nazwisko`, `Wiek`, `Kurs`)
VALUES
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', 'KOWALCZYK', 34, 'Java'),
(7, 'Robert', 'KOWALCZYK', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, NULL, 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, NULL),
(12, 'Robert', 'KOZŁOWSKI', NULL, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, NULL, 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrzej', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'KOWALCZYK', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

-- 4
SELECT *
FROM pracownicy
WHERE Nazwisko = "KOWALCZYK";

-- 5
SELECT *
FROM pracownicy
WHERE wiek >= 30 AND wiek <= 40;

-- 6
SELECT *
FROM pracownicy WHERE Nazwisko != "%and%";

-- 7
SELECT *
FROM pracownicy 
WHERE ID BETWEEN 1 AND 7;

-- 8
SELECT * 
FROM pracownicy
WHERE Imię IS NOT NULL
AND Nazwisko IS NOT NULL
AND wiek IS NOT NULL
AND kurs IS NOT NULL;

-- 9
SELECT * 
FROM pracownicy
WHERE kurs IS NULL;



