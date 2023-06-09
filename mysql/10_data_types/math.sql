USE book_shop;

-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html
SELECT birthdate FROM people;

SELECT CURDATE() FROM people;

SELECT birthdate, DATEDIFF(CURDATE(), birthdate) FROM people;

SELECT DATE_ADD(CURDATE(), INTERVAL 1 DAY);
SELECT DATE_ADD(CURDATE(), INTERVAL 1 MONTH);
SELECT DATE_ADD(CURDATE(), INTERVAL 1 YEAR);
SELECT DATE_ADD(CURDATE(), INTERVAL '1:1' MINUTE_SECOND);
SELECT DATE_ADD(CURDATE(), INTERVAL '1 1:1:1' DAY_SECOND);

SELECT DATE_SUB(CURDATE(), INTERVAL 1 DAY);
SELECT DATE_SUB(CURDATE(), INTERVAL 1 MONTH);
SELECT DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

SELECT birthdate, DATE_ADD(birthdate, INTERVAL 18 YEAR) FROM people;

SELECT TIMEDIFF(CURTIME(), '07:00:00');

SELECT NOW() - INTERVAL 18 YEAR;

SELECT name, birthdate, birthdate + INTERVAL 21 YEAR FROM people;
SELECT name, birthdate, YEAR(birthdate + INTERVAL 21 YEAR) AS will_be_21 FROM people;