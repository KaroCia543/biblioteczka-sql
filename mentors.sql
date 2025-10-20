CREATE DATABASE School_Coding;

CREATE TABLE School_Coding.Mentors (
ID INTEGER,
Imię TEXT,
Nazwisko TEXT,
Specjalizacja TEXT,
Data_zatrudnienia DATE,
Data_zwolnienia DATE
);

INSERT INTO Mentors (ID, Imię, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia)
VALUES (1, 'Maciej', 'Kamiński', 'PHP', '2018-06-12', '2025-10-20'),
	(2, 'Michał', 'Kołodziej', 'JAVA', '2020-07-23', '2025-10-19'),
    (3, 'Kamila', 'Grzanka', 'SQL', '2015-03-12', '2025-10-18'),
    (4, 'Grzegorz', 'Kawka', 'Python', '2023-09-15', '2025-10-17'),
    (5, 'Monika', 'Ziółkowska-Machoń','C++', '2013-05-01', '2025-10-16'),
    (6, 'August', 'Siódmy', 'R', '2019-03-03', '2025-10-15'),
    (7, 'Mirela', 'Gawrona', 'SQL', '2020-04-20', '2025-10-14'),
    (8, 'Grzegorz', 'Bączek', 'C#', '2016-06-08', '2025-10-13'),
    (9, 'Wojciech', 'Bolerko', 'Photoshop', '2018-05-22', '2025-10-12'),
    (10, 'Zuzanna', 'Papilot', 'HTML', '2022-04-22', '2025-10-22');
    
SELECT *
FROM Mentors;
    
UPDATE Mentors
SET Nazwisko = 'Ziółkowska'
WHERE ID = 5;

SELECT Nazwisko
FROM Mentors 
WHERE ID = 5;

UPDATE Mentors
SET Specjalizacja = "PHP"
WHERE ID = 9;

SELECT Specjalizacja
FROM Mentors
WHERE ID = 9;

ALTER TABLE mentors
ADD COLUMN Wynagrodzenie DOUBLE;

UPDATE mentors
SET Wynagrodzenie = CASE
	WHEN ID = 1 THEN '1000'
    WHEN ID = 2 THEN '1000'
    WHEN ID = 3 THEN '1000'
END
WHERE ID IN (1,2,3);

SELECT *
FROM mentors
WHERE ID IN (1,2,3);