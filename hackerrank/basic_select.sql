CREATE TABLE city (
    id INT,
    name VARCHAR(17),
    countrycode VARCHAR(3),
    distinct VARCHAR(20),
    population INT
);

-- Revising the Select Query I (Basic Select)
-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT * FROM city WHERE population >= 100000 AND countrycode='USA';

-- Revising the Select Query II (Basic Select)
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT name FROM city WHERE population >= 120000 AND countrycode='USA';

-- Select All (Basic Select)
-- Query all columns for a city in CITY with the ID 1661.
SELECT * FROM city WHERE id=1661;

-- Select By ID (Basic Select)
-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM city WHERE countrycode='JPN';

-- Japanese Cities' Attributes (Basic Select)
-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT name FROM city WHERE countrycode='JPN';


-- Weather Observation Station
-- LAT_N is the northern latitude and LONG_W is the western longitude.
CREATE TABLE station (
    id INT,
    city VARCHAR(21),
    state VARCHAR(2),
    lat_n INT,
    long_n INT
);

-- Weather Observation Station 1 (Basic Select)
-- Query a list of CITY and STATE from the STATION table.
SELECT city, state FROM station;

-- Weather Observation Station 2 (Aggregation)
-- Query the following two values from the STATION table:
-- The sum of all values in LAT_N rounded to a scale of 2 decimal places.
-- The sum of all values in LONG_W rounded to a scale of 2 decimal places.
SELECT ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2) FROM station;


-- Weather Observation Station 3 (Basic Select)
-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT city FROM station WHERE id % 2 = 0;

-- Weather Observation Station 4 (Basic Select)
-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
CREATE TABLE total_cities AS SELECT COUNT(city) AS number FROM station;
CREATE TABLE distinct_cities AS SELECT COUNT(DISTINCT city) AS number FROM station;
SELECT (SELECT number FROM total_cities) - (SELECT number FROM distinct_cities);

-- Weather Observation Station 5 (Basic Select)
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
CREATE TABLE min_city AS SELECT city, LENGTH(city) as length FROM station GROUP BY city ORDER BY city;
CREATE TABLE max_city AS SELECT city, LENGTH(city) as length FROM station GROUP BY city ORDER BY city;
CREATE TABLE min_city_num AS SELECT * FROM min_city WHERE length = (SELECT MIN(length) FROM min_city) LIMIT 1;
CREATE TABLE max_city_num AS SELECT * FROM max_city WHERE length = (SELECT MAX(length) FROM max_city) LIMIT 1;
SELECT * FROM min_city_num UNION SELECT * FROM max_city_num;

-- Weather Observation Station 6 (Basic Select)
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station 
WHERE city LIKE 'a%' 
OR city LIKE 'e%'
OR city LIKE 'i%'
OR city LIKE 'o%'
OR city LIKE 'u%';

-- Weather Observation Station 7 (Basic Select)
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station 
WHERE city LIKE '%a' 
OR city LIKE '%e'
OR city LIKE '%i'
OR city LIKE '%o'
OR city LIKE '%u';

-- Weather Observation Station 8 (Basic Select)
-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
CREATE VIEW front AS 
SELECT DISTINCT city FROM station 
WHERE city LIKE 'a%' 
OR city LIKE 'e%'
OR city LIKE 'i%'
OR city LIKE 'o%'
OR city LIKE 'u%';

CREATE VIEW back AS
SELECT DISTINCT city FROM station 
WHERE city LIKE '%a' 
OR city LIKE '%e'
OR city LIKE '%i'
OR city LIKE '%o'
OR city LIKE '%u';

SELECT front.city FROM front
JOIN back ON front.city = back.city;

-- Weather Observation Station 9 (Basic Select)
-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station 
WHERE city NOT LIKE 'a%' 
AND city NOT LIKE 'e%'
AND city NOT LIKE 'i%'
AND city NOT LIKE 'o%'
AND city NOT LIKE 'u%';

-- Weather Observation Station 10 (Basic Select)
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station 
WHERE city NOT LIKE '%a' 
AND city NOT LIKE '%e'
AND city NOT LIKE '%i'
AND city NOT LIKE '%o'
AND city NOT LIKE '%u';

-- Weather Observation Station 10 (Basic Select)
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
-- Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION 
WHERE (CITY NOT IN (
        SELECT DISTINCT CITY FROM STATION 
        WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u'
    )
)
OR 
    (CITY NOT IN (
        SELECT CITY FROM STATION 
        WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%'
    )
);

SELECT DISTINCT city FROM station WHERE city RLIKE '^[^aeiouAEIOU].*|.*[^AEIOUaeiou]$';

-- Weather Observation Station 12 (Basic Select)
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
CREATE VIEW front AS
SELECT DISTINCT city FROM station 
WHERE city NOT LIKE 'a%' 
AND city NOT LIKE 'e%'
AND city NOT LIKE 'i%'
AND city NOT LIKE 'o%'
AND city NOT LIKE 'u%';

CREATE VIEW back AS
SELECT DISTINCT city FROM station 
WHERE city NOT LIKE '%a' 
AND city NOT LIKE '%e'
AND city NOT LIKE '%i'
AND city NOT LIKE '%o'
AND city NOT LIKE '%u';

SELECT front.city FROM front
JOIN back ON front.city = back.city;

-- Weather Observation Station 13 (Aggregation)
-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. 
-- Truncate your answer to 4 decimal places.
SELECT ROUND(SUM(lat_n), 4) FROM station
WHERE lat_n > 38.7880 AND lat_n < 137.2345;

-- Weather Observation Station 14 (Aggregation)
-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
SELECT ROUND(MAX(lat_n), 4) FROM station
WHERE lat_n < 137.2345;

-- Weather Observation Station 15 (Aggregation)
-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. 
-- Round your answer to 4 decimal places.
SELECT ROUND(long_w, 4) FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1;

-- Weather Observation Station 16 (Aggregation)
-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. 
-- Round your answer to 4 decimal places.
SELECT ROUND(MIN(lat_n), 4) FROM station
WHERE lat_n > 38.7780;

-- Weather Observation Station 17 (Aggregation)
-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. 
-- Round your answer to  decimal places.
SELECT ROUND(long_w, 4) FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n
LIMIT 1;

-- Weather Observation Station 18 (Aggregation)
-- Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.
-- a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
-- b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
-- c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
-- d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
-- Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
-- Manhattan Distance is the distance between two points measured along axes at right angles. 
-- In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.
-- a: SELECT MIN(lat_n) FROM station;
-- b: SELECT MIN(long_w) FROM station;
-- c: SELECT MAX(lat_n) FROM station;
-- d: SELECT MAX(long_w) FROM station;
SELECT ROUND(ABS(MIN(lat_n) - MAX(lat_n)) + ABS(MAX(long_w) - MIN(long_w)), 4) FROM station;

-- Weather Observation Station 19 (Aggregation)
-- Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.
-- -- In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is square_root((x1 - x2)^2 + (y1 - y2)^2).
SELECT ROUND(SQRT(SQUARE(MIN(lat_n) - MAX(lat_n)) + SQUARE(MAX(long_w) - MIN(long_w))), 4) FROM station;
SELECT ROUND(SQRT(POWER(MIN(lat_n) - MAX(lat_n), 2) + POWER(MAX(long_w) - MIN(long_w), 2)), 4) FROM station;

-- Weather Observation Station 20 (Aggregation)
-- A median is defined as a number separating the higher half of a data set from the lower half. 
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.
CREATE VIEW new_station AS 
SELECT lat_n, ROW_NUMBER() OVER(ORDER BY lat_n) AS row_num 
FROM station
GROUP BY lat_n
ORDER BY lat_n;

-- Accepted answer
SELECT ROUND(lat_n, 4) FROM new_station 
WHERE row_num = (SELECT ((COUNT(*) + 1) / 2) FROM new_station);

-- Comprehensive answer
SELECT
CASE
    WHEN (SELECT COUNT(*) FROM new_station) % 2 != 0 THEN
    (
        SELECT ROUND(lat_n, 4) FROM new_station 
        WHERE row_num = (SELECT ((COUNT(*) + 1) / 2) FROM new_station)
    )
    ELSE
    (
        SELECT ROUND(AVG(lat_n), 4) FROM new_station 
        WHERE row_num BETWEEN 
            (SELECT (COUNT(*) / 2) FROM new_station)
            AND 
            (SELECT ((COUNT(*) / 2) + 1) FROM new_station)
    )
END
FROM new_station
LIMIT 1;


-- Higher Than 75 Marks (Basic Select)
-- Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. 
-- If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
-- The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.
CREATE TABLE students (
    id INT,
    name VARCHAR(200),
    marks INT,
    CONSTRAINT CHECK(name NOT LIKE '%[^a-zA-Z]%')
);

SELECT name FROM STUDENTS 
WHERE marks > 75 ORDER BY RIGHT(name, 3), ID;

SELECT name FROM STUDENTS 
WHERE marks > 75 ORDER BY SUBSTR(name, -3), ID;


-- Employee
CREATE TABLE employee (
    employee_id INT,
    name VARCHAR(200),
    months INT,
    salary INT
)

-- Employee Names (Basic Select)
-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name FROM employee ORDER BY name;

-- Employee Names (Basic Select)
-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary 
-- greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT name FROM employee
WHERE months < 10 
AND salary > 2000
ORDER BY employee_id;