-- 1,2,3
TRUNCATE TABLE pracownicy;

ALTER TABLE pracownicy
RENAME COLUMN szkolenie to Kurs;

INSERT INTO pracownicy (ID, Imię, Nazwisko, Wiek, Kurs)
VALUES (1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Anna', NULL, 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', NULL, 'Tester'),
(6, 'Anna', 'KOWALCZYK', NULL, 'Java'),
(7, 'Robert', 'KOWALCZYK', NULL, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', NULL, 'Java'),
(9, 'Robert', 'WOŹNIAK', NULL, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Tester'),
(11, 'Radosław', 'DĄBROWSKI', 35, NULL),
(12, 'Robert', 'KOZŁOWSKI', NULL, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, NULL),
(16, NULL, 'ZIELIŃSKI', 28, NULL),
(17, 'Andrzej', 'WOŹNIAK', 31, NULL),
(18, 'Andrzej', 'LEWANDOWSKI', 30, NULL),
(19, 'Roman', 'KOWALCZYK', 39, NULL),
(20, 'Ewa', 'WOŹNIAK', 31, NULL);

-- 4
SELECT DISTINCT Imię
	FROM pracownicy
    ORDER BY Imię;

-- 5
SELECT DISTINCT Nazwisko 
FROM pracownicy
ORDER BY Nazwisko;

-- 6 
SELECT kurs
FROM pracownicy
WHERE Nazwisko = "Kowalczyk";

-- 7
SELECT *
FROM pracownicy
WHERE wiek IS NULL;

-- 8
SELECT wiek
FROM pracownicy
WHERE Imię = "Patryk";

-- 9 
ALTER TABLE pracownicy
RENAME TO mentorzy;
