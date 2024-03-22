USE book_shop;

-- 'April 11 1985'
-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_date-format

SELECT DATE_FORMAT(birthdate, '%b') FROM people;

SELECT DATE_FORMAT(birthdate, '%a %b %D %y') FROM people;

SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;

SELECT birthdt, DATE_FORMAT(birthdt, '%r') FROM people;

SELECT birthdt, DATE_FORMAT(birthdt, '%T') FROM people;
