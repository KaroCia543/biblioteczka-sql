-- a
SELECT start_date,
YEAR(start_date) AS rok,
MONTH(start_date) AS miesiąc,
DAY(start_date) AS dzień
FROM batman;

-- b
SELECT start_date,
start_date + INTERVAL 3 DAY AS final_date
FROM batman;

-- c
SELECT CURDATE() AS TODAY;
    
-- d
SELECT MONTHNAME(CURDATE()) AS TODAY_MONTH;

-- e
SELECT start_date,
WEEKOFYEAR(start_date) AS numer_tygodnia,
MONTHNAME(start_date) AS nazwa_miesiąca,
QUARTER(start_date) AS kwartał,
DAYOFYEAR(start_date) AS numer_dnia_w_roku
FROM batman;

