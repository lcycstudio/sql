CREATE TABLE city (
    id INT,
    name VARCHAR(17),
    countrycode VARCHAR(3),
    distinct VARCHAR(20),
    population INT
);

-- Revising the Select Query I
-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT * FROM city WHERE population >= 100000 AND countrycode='USA';

-- Revising the Select Query II
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT name FROM city WHERE population >= 120000 AND countrycode='USA';

-- Select All
-- Query all columns for a city in CITY with the ID 1661.
SELECT * FROM city WHERE id=1661;

-- Select By ID
-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM city WHERE countrycode='JPN';

-- Japanese Cities' Attributes
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

-- Weather Observation Station 1
-- Query a list of CITY and STATE from the STATION table.
SELECT city, state FROM station;

-- Weather Observation Station 3
-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT city FROM station WHERE id % 2 = 0;

-- Weather Observation Station 4
-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
CREATE TABLE total_cities AS SELECT COUNT(city) AS number FROM station;
CREATE TABLE distinct_cities AS SELECT COUNT(DISTINCT city) AS number FROM station;
SELECT (SELECT number FROM total_cities) - (SELECT number FROM distinct_cities);

-- Weather Observation Station 5
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
CREATE TABLE min_city AS SELECT city, LENGTH(city) as length FROM station GROUP BY city ORDER BY city;
CREATE TABLE max_city AS SELECT city, LENGTH(city) as length FROM station GROUP BY city ORDER BY city;
CREATE TABLE min_city_num AS SELECT * FROM min_city WHERE length = (SELECT MIN(length) FROM min_city) LIMIT 1;
CREATE TABLE max_city_num AS SELECT * FROM max_city WHERE length = (SELECT MAX(length) FROM max_city) LIMIT 1;
SELECT * FROM min_city_num UNION SELECT * FROM max_city_num;

-- Weather Observation Station 6
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station 
WHERE city LIKE 'a%' 
OR city LIKE 'e%'
OR city LIKE 'i%'
OR city LIKE 'o%'
OR city LIKE 'u%';

-- Weather Observation Station 7
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station 
WHERE city LIKE '%a' 
OR city LIKE '%e'
OR city LIKE '%i'
OR city LIKE '%o'
OR city LIKE '%u';

-- Weather Observation Station 8
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

-- Weather Observation Station 9
-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station 
WHERE city NOT LIKE 'a%' 
AND city NOT LIKE 'e%'
AND city NOT LIKE 'i%'
AND city NOT LIKE 'o%'
AND city NOT LIKE 'u%';

-- Weather Observation Station 10
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station 
WHERE city NOT LIKE '%a' 
AND city NOT LIKE '%e'
AND city NOT LIKE '%i'
AND city NOT LIKE '%o'
AND city NOT LIKE '%u';

-- Weather Observation Station 10
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

-- Weather Observation Station 12
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


-- Higher Than 75 Marks
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

-- Employee Names
-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name FROM employee ORDER BY name;

-- Employee Salaries
-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary 
-- greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT name FROM employee
WHERE months < 10 
AND salary > 2000
ORDER BY employee_id;