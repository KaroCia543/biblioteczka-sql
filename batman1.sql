CREATE DATABASE aggregates;
CREATE TABLE aggregates.batman(
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  sex CHAR(1),
  age INTEGER,
  price DOUBLE,
  start_date DATE,
  gift TEXT
);
INSERT INTO aggregates.batman VALUES (1, 'Alicja', 'Rogal', 'F', 16, 100.25,'2020-01-02', 'rower' );
INSERT INTO aggregates.batman VALUES (2, 'Iwona', 'Kowalska', 'F', 33, 56.58, '2020-01-03', 'komputer');
INSERT INTO aggregates.batman VALUES (3, 'Igor', 'Kowalski', 'M', 50, 68.00, '2020-01-04', 'karty');
INSERT INTO aggregates.batman VALUES (4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'piłka'); 
INSERT INTO aggregates.batman VALUES (5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' );
INSERT INTO aggregates.batman VALUES (6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' );
INSERT INTO aggregates.batman VALUES (7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi');
INSERT INTO aggregates.batman VALUES (8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona');
INSERT INTO aggregates.batman VALUES (9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');

-- a
SELECT COUNT(ID) 
FROM batman;

-- b
SELECT COUNT(age)
FROM batman;

-- c
SELECT COUNT(age > 40)
FROM batman
WHERE sex = 'M';

-- d
SELECT SUM(price)
FROM batman;

-- e
SELECT SUM(age)
FROM batman
WHERE sex = 'F';

-- f
SELECT SUM(price)
FROM batman
WHERE gift IN ('komputer', 'okno');

-- g
SELECT MAX(price)
FROM batman;

-- h
SELECT MAX(start_date) AS last_date
FROM batman;

-- i
SELECT last_name 
FROM batman
ORDER BY LEFT(last_name, 1) DESC
LIMIT 1;

-- j
SELECT MIN(price)
FROM batman;

-- k
SELECT MIN(start_date)
FROM batman;

-- l
SELECT last_name
FROM batman
ORDER BY LEFT(last_name, 1)
LIMIT 1;

-- m
SELECT MIN(price) AS 'MIN PRICE', 
	MAX(price) AS 'MAX PRICE'
FROM batman;

-- n
SELECT MAX(price) - MIN(price) AS 'PRICE DIFFERENCE'
FROM batman;

-- o
SELECT AVG(age) AS 'average age'
FROM batman;

-- p
SELECT SUM(age)/COUNT(age) AS 'average age'
FROM batman;

-- q
SELECT AVG(age), sex
FROM batman
GROUP BY sex;




