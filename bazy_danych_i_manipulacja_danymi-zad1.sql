CREATE DATABASE moja_baza;

CREATE TABLE moja_baza.Biblioteczka (
ID INTEGER,
tytuł TEXT,
data_zakupu DATE
);

INSERT INTO Biblioteczka (ID, tytuł, data_zakupu)
VALUES (1, 'Wielki Marsz', '2015-12-23');

SELECT * 
FROM Biblioteczka;

INSERT INTO Biblioteczka
VALUES (2, 'Medaliony', '2013-05-16'), 
(3, 'Harry Potter', '2014-04-22');

UPDATE Biblioteczka
SET tytuł = 'Nieodnaleziona'
WHERE ID = 1;

DESCRIBE Biblioteczka;

ALTER TABLE Biblioteczka ADD PRIMARY KEY (ID);

DESCRIBE Biblioteczka;

ALTER TABLE Biblioteczka
ADD COLUMN autor TEXT;

/*
UPDATE Biblioteczka
SET autor = 'Remigiusz Mróz'
WHERE ID = 1;

UPDATE Biblioteczka
SET autor = 'Zofia Nałkowska'
WHERE ID = 2;

UPDATE Biblioteczka
SET autor = 'J. K. Rowling'
WHERE ID = 3;
*/

-- Same but faster
UPDATE Biblioteczka
SET autor = CASE
    WHEN ID = 1 THEN 'Remigiusz Mróz'
    WHEN ID = 2 THEN 'Zofia Nałkowska'
    WHEN ID = 3 THEN 'J. K. Rowling'
END
WHERE ID IN (1, 2, 3);

DELETE FROM Biblioteczka
WHERE ID IN (2, 3);

SELECT autor 
FROM Biblioteczka;
