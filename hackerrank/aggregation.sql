-- Weather Observation Station
-- LAT_N is the northern latitude and LONG_W is the western longitude.
CREATE TABLE station (
    id INT,
    city VARCHAR(21),
    state VARCHAR(2),
    lat_n INT,
    long_n INT
);

-- Weather Observation Station 2
-- Query the following two values from the STATION table:
-- The sum of all values in LAT_N rounded to a scale of 2 decimal places.
-- The sum of all values in LONG_W rounded to a scale of 2 decimal places.
SELECT ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2) FROM station;

-- Weather Observation Station 13
-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. 
-- Truncate your answer to 4 decimal places.
SELECT ROUND(SUM(lat_n), 4) FROM station
WHERE lat_n > 38.7880 AND lat_n < 137.2345;

-- Weather Observation Station 14
-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
SELECT ROUND(MAX(lat_n), 4) FROM station
WHERE lat_n < 137.2345;

-- Weather Observation Station 15
-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. 
-- Round your answer to 4 decimal places.
SELECT ROUND(long_w, 4) FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1;

-- Weather Observation Station 16
-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. 
-- Round your answer to 4 decimal places.
SELECT ROUND(MIN(lat_n), 4) FROM station
WHERE lat_n > 38.7780;

-- Weather Observation Station 17
-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. 
-- Round your answer to  decimal places.
SELECT ROUND(long_w, 4) FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n
LIMIT 1;

-- Weather Observation Station 18
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

-- Weather Observation Station 19
-- Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.
-- -- In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is square_root((x1 - x2)^2 + (y1 - y2)^2).
SELECT ROUND(SQRT(SQUARE(MIN(lat_n) - MAX(lat_n)) + SQUARE(MAX(long_w) - MIN(long_w))), 4) FROM station;
SELECT ROUND(SQRT(POWER(MIN(lat_n) - MAX(lat_n), 2) + POWER(MAX(long_w) - MIN(long_w), 2)), 4) FROM station;

-- Weather Observation Station 20
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


-- Weather Observation Station
-- LAT_N is the northern latitude and LONG_W is the western longitude.
CREATE TABLE city (
    ID INT,
    NAME VARCHAR2(17),
    COUNTRYCODE VARCHAR2(3),
    DISTRICT INT,
    POPULATION INT
);

-- Revising Aggregations - The Sum Function
-- Query the total population of all cities in CITY where District is California.
SELECT SUM(population) FROM city WHERE DISTRICT = 'California';

-- Revising Aggregations - Averages
-- Query the average population of all cities in CITY where District is California.
SELECT AVG(population) FROM city WHERE DISTRICT = 'California';

-- Revising Aggregations - The Count Function
-- Query a count of the number of cities in CITY having a Population larger than 100,000.
SELECT COUNT(*) FROM city WHERE population >= 100000;

-- Average Population
-- Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT CEIL(AVG(population)) FROM city;

-- Japan Population
-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(population) FROM city WHERE COUNTRYCODE = 'JPN';

-- Population Density Difference
-- Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(population)- MIN(population) FROM city;

-- The Blunder
-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her 
-- keyboard's 0 key was broken until after completing the calculation. She wants your help finding the difference between her 
-- miscalculation (using salaries with any zeros removed), and the actual average salary.
-- Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), and round it up to the next integer.
CREATE TABLE employees (
    id INT,
    name VARCHAR(21),
    salary INT
);

SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, 0,''))) FROM employees;


-- We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings 
-- for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number 
-- of employees who have maximum total earnings. Then print these values as  space-separated integers.
CREATE TABLE employees {
    employee_id INT,
    name VARCHAR(21),
    months INT,
    salary INT
}
-- employee_id is an employee's ID number, name is their name
-- months is the total number of months they've been working for the company
-- salary is the their monthly salary.
SELECT months * salary AS earns, COUNT(*) FROM Employee
WHERE (months * salary) = (SELECT MAX(months * salary) FROM Employee)
GROUP BY earns;