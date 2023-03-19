CREATE TABLE city (
    id INT,
    name VARCHAR(17),
    countrycode VARCHAR(3),
    distinct VARCHAR(20),
    population INT
);

-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT * FROM city WHERE population >= 100000 AND countrycode='USA';

-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT name FROM city WHERE population >= 120000 AND countrycode='USA';

-- Query all columns for a city in CITY with the ID 1661.
SELECT * FROM city WHERE id=1661;

-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM city WHERE countrycode='JPN';

-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT name FROM city WHERE countrycode='JPN';



CREATE TABLE station (
    id INT,
    city VARCHAR(21),
    state VARCHAR(2),
    lat_n INT,
    long_n INT
)

-- Query a list of CITY and STATE from the STATION table.
SELECT city, state FROM station;

-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT city FROM station WHERE id % 2 = 0;

-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
CREATE TABLE total_cities AS SELECT COUNT(city) AS number FROM station;
CREATE TABLE distinct_cities AS SELECT COUNT(DISTINCT city) AS number FROM station;
SELECT (SELECT number FROM total_cities) - (SELECT number FROM distinct_cities);

-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
CREATE TABLE min_city AS SELECT city, LENGTH(city) as length FROM station GROUP BY city ORDER BY city;
CREATE TABLE max_city AS SELECT city, LENGTH(city) as length FROM station GROUP BY city ORDER BY city;
CREATE TABLE min_city_num AS SELECT * FROM min_city WHERE length = (SELECT MIN(length) FROM min_city) LIMIT 1;
CREATE TABLE max_city_num AS SELECT * FROM max_city WHERE length = (SELECT MAX(length) FROM max_city) LIMIT 1;
SELECT * FROM min_city_num UNION SELECT * FROM max_city_num;

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station 
WHERE city LIKE 'a%' 
OR city LIKE 'e%'
OR city LIKE 'i%'
OR city LIKE 'o%'
OR city LIKE 'u%';

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station 
WHERE city LIKE '%a' 
OR city LIKE '%e'
OR city LIKE '%i'
OR city LIKE '%o'
OR city LIKE '%u';

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
