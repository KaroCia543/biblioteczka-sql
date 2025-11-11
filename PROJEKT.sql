-- 1
CREATE DATABASE sklep_odzieżowy;
USE sklep_odzieżowy;   

-- 2
CREATE TABLE producenci (
	id_producenta INTEGER PRIMARY KEY,
    nazwa_producenta TEXT,
    adres_producenta TEXT,
    nip_producenta INTEGER,
    data_podpisania_umowy_z_producentem DATE
    );

-- 3
CREATE TABLE produkty (
	id_produktu INTEGER PRIMARY KEY,
    id_producenta INTEGER,
    nazwa_produktu TEXT,
    opis_produktu TEXT,
    cena_netto_zakupu DOUBLE,
    cena_brutto_zakupu DOUBLE,
    cena_netto_sprzedaży DOUBLE,
    cena_brutto_sprzedaży DOUBLE,
    procent_vat_sprzedaży DOUBLE
    );

-- 4
CREATE TABLE zamówienia (
	id_zamówienia INTEGER PRIMARY KEY,
    id_klienta INTEGER,
    id_produktu INTEGER,
    data_zamówienia DATE
    );
    
-- 5
CREATE TABLE klienci (
	id_klienta INTEGER PRIMARY KEY,
    imię TEXT,
    nazwisko TEXT,
    adres TEXT
    );
    
SHOW TABLES;

-- 6
ALTER TABLE produkty
ADD CONSTRAINT produkty_producenci
FOREIGN KEY (id_producenta)
REFERENCES producenci (id_producenta);

ALTER TABLE zamówienia
ADD CONSTRAINT zamówienia_produkty
FOREIGN KEY (id_produktu)
REFERENCES produkty (id_produktu);

ALTER TABLE zamówienia
ADD CONSTRAINT zamówienia_klienci
FOREIGN KEY (id_klienta)
REFERENCES klienci (id_klienta);

-- 7
ALTER TABLE produkty
DROP FOREIGN KEY produkty_producenci;

ALTER TABLE producenci
MODIFY COLUMN id_producenta INT AUTO_INCREMENT;

ALTER TABLE produkty
ADD CONSTRAINT produkty_producenci
FOREIGN KEY (id_producenta) REFERENCES producenci(id_producenta);

INSERT INTO Producenci (nazwa_producenta, adres_producenta, nip_producenta, data_podpisania_umowy_z_producentem)
VALUES
('ModaPol', 'Łódź, ul. Piotrkowska 100', '7283947', '2020-03-15'),
('StylLux', 'Warszawa, ul. Marszałkowska 12', '8372619', '2019-05-10'),
('TexWorld', 'Kraków, ul. Długa 45', '9273648', '2021-02-01'),
('DenimArt', 'Gdańsk, ul. Grunwaldzka 88', '8392716', '2018-11-23');

INSERT INTO produkty (id_produktu, id_producenta, nazwa_produktu, opis_produktu, cena_netto_zakupu, cena_brutto_zakupu, cena_netto_sprzedaży, cena_brutto_sprzedaży, procent_vat_sprzedaży) VALUES
(1, 1, 'Koszulka basic biała', 'Bawełniana koszulka unisex', 25.00, 30.75, 39.99, 49.19, 23),
(2, 1, 'Koszulka basic czarna', 'Bawełniana koszulka unisex', 25.00, 30.75, 39.99, 49.19, 23),
(3, 1, 'Bluza z kapturem', 'Bluza unisex 100% bawełna', 80.00, 98.40, 129.99, 159.88, 23),
(4, 1, 'Spodnie dresowe', 'Dresy z miękkiej dzianiny', 70.00, 86.10, 119.99, 147.59, 23),
(5, 2, 'Sukienka letnia', 'Sukienka w kwiaty', 90.00, 110.70, 159.99, 196.79, 23),
(6, 2, 'Spódnica jeansowa', 'Jeansowa spódnica do kolan', 75.00, 92.25, 129.99, 159.89, 23),
(7, 2, 'Marynarka damska', 'Elegancka marynarka granatowa', 120.00, 147.60, 199.99, 245.99, 23),
(8, 2, 'Płaszcz zimowy', 'Wełniany płaszcz damski', 250.00, 307.50, 399.99, 491.99, 23),
(9, 3, 'Koszula męska', 'Koszula slim fit', 70.00, 86.10, 129.99, 159.88, 23),
(10, 3, 'T-shirt oversize', 'Koszulka męska z nadrukiem', 30.00, 36.90, 59.99, 73.78, 23),
(11, 3, 'Sweter wełniany', 'Sweter męski 100% wełna', 110.00, 135.30, 189.99, 233.68, 23),
(12, 3, 'Kurtka jeansowa', 'Klasyczna kurtka z denimu', 130.00, 159.90, 219.99, 270.59, 23),
(13, 4, 'Jeansy slim fit', 'Męskie jeansy slim fit', 95.00, 116.85, 159.99, 196.79, 23),
(14, 4, 'Jeansy regular', 'Klasyczne jeansy prosty krój', 90.00, 110.70, 149.99, 184.49, 23),
(15, 4, 'Kurtka skórzana', 'Kurtka ze skóry naturalnej', 300.00, 369.00, 499.99, 614.99, 23),
(16, 4, 'Kamizelka jeansowa', 'Kamizelka z denimu', 85.00, 104.55, 139.99, 172.19, 23),
(17, 1, 'Czapka zimowa', 'Ciepła czapka akrylowa', 20.00, 24.60, 39.99, 49.19, 23),
(18, 2, 'Szal wełniany', 'Szal z miękkiej wełny', 45.00, 55.35, 79.99, 98.39, 23),
(19, 3, 'Koszulka polo', 'Koszulka męska z kołnierzykiem', 35.00, 43.05, 69.99, 86.09, 23),
(20, 4, 'Kurtka bomber', 'Kurtka typu bomber unisex', 140.00, 172.20, 229.99, 282.89, 23);

INSERT INTO klienci (id_klienta, imię, nazwisko, adres) VALUES
(1, 'Anna', 'Nowak', 'Warszawa, ul. Jasna 10'),
(2, 'Piotr', 'Kowalski', 'Łódź, ul. Wólczańska 55'),
(3, 'Katarzyna', 'Wiśniewska', 'Poznań, ul. Półwiejska 20'),
(4, 'Michał', 'Lewandowski', 'Kraków, ul. Grodzka 7'),
(5, 'Agnieszka', 'Wójcik', 'Gdańsk, ul. Szeroka 14'),
(6, 'Tomasz', 'Kamiński', 'Wrocław, ul. Legnicka 100'),
(7, 'Monika', 'Zielińska', 'Szczecin, ul. Krzywoustego 33'),
(8, 'Robert', 'Szymański', 'Katowice, ul. Chorzowska 22'),
(9, 'Julia', 'Dąbrowska', 'Lublin, ul. Narutowicza 5'),
(10, 'Andrzej', 'Pawlak', 'Bydgoszcz, ul. Gdańska 50');

INSERT INTO zamówienia (id_zamówienia, id_klienta, id_produktu, data_zamówienia) 
VALUES
(1, 1, 1, '2023-01-15'),
(2, 2, 3, '2023-02-05'),
(3, 3, 5, '2023-03-10'),
(4, 4, 8, '2023-03-25'),
(5, 5, 10, '2023-04-02'),
(6, 6, 13, '2023-05-08'),
(7, 7, 15, '2023-06-11'),
(8, 8, 17, '2023-07-01'),
(9, 9, 18, '2023-07-25'),
(10, 10, 20, '2023-08-14');

-- 8
SELECT p.*, pr.*
FROM produkty p
JOIN producenci pr ON p.id_producenta = pr.id_producenta
WHERE pr.id_producenta = 1;

-- 9
SELECT p.*, pr.*
FROM produkty p
JOIN producenci pr ON p.id_producenta = pr.id_producenta
WHERE pr.id_producenta = 1
ORDER BY p.nazwa_produktu ASC;

-- 10
SELECT AVG(cena_netto_zakupu) AS srednia_cena
FROM produkty
WHERE id_producenta = 1;

-- 11
SELECT 
	nazwa_produktu,
    cena_netto_zakupu,
    CASE
		WHEN cena_netto_zakupu <= (
			SELECT AVG(cena_netto_zakupu)
            FROM produkty
            WHERE id_producenta = 1
		)
		THEN 'tanie'
		ELSE 'drogie'
        END AS grupa
	FROM produkty
    WHERE id_producenta = 1
    ORDER BY cena_netto_zakupu ASC;
            
-- 12
SELECT DISTINCT P.nazwa_produktu 
FROM zamówienia z
JOIN produkty p ON z.id_produktu = p.id_produktu
ORDER BY p.nazwa_produktu ASC;

-- 13
SELECT DISTINCT P.nazwa_produktu 
FROM zamówienia z
JOIN produkty p ON z.id_produktu = p.id_produktu
ORDER BY p.nazwa_produktu ASC
LIMIT 5;

-- 14
SELECT SUM(p.cena_netto_zakupu) AS łączna_wartość_zakupu_netto
FROM zamówienia z
JOIN produkty p ON z.id_produktu = p.id_produktu;

-- 15
SELECT DISTINCT z.*, p.nazwa_produktu 
FROM zamówienia z
JOIN produkty p ON z.id_produktu = p.id_produktu
ORDER BY z.data_zamówienia;

-- 16
SELECT *
FROM produkty
WHERE 
    nazwa_produktu IS NULL
    OR opis_produktu IS NULL
    OR cena_netto_zakupu IS NULL
    OR cena_brutto_zakupu IS NULL
    OR cena_netto_sprzedaży IS NULL
    OR cena_brutto_sprzedaży IS NULL
    OR procent_vat_sprzedaży IS NULL
    OR id_producenta IS NULL;

-- 17
SELECT p.nazwa_produktu, p.cena_netto_sprzedaży, COUNT(*) AS liczba_zamówień
FROM zamówienia z
JOIN produkty p ON z.id_produktu = p.id_produktu
GROUP BY p.id_produktu, p.nazwa_produktu, p.cena_netto_sprzedaży
ORDER BY liczba_zamówień DESC
LIMIT 1;

-- 18
SELECT data_zamówienia, COUNT(*) AS liczba_zamówień
FROM zamówienia
GROUP BY data_zamówienia
ORDER BY liczba_zamówień DESC
LIMIT 1;
