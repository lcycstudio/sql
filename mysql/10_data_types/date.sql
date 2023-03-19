USE book_shop;

SELECT birthdate FROM people;

SELECT birthdate, DAY(birthdate) FROM people;

SELECT birthdate, DAY(birthdate), DAYOFWEEK(birthdate) FROM people;

SELECT birthdate, DAY(birthdate), DAYOFWEEK(birthdate), DAYOFYEAR(birthdate) FROM people;

SELECT birthdate, MONTHNAME(birthdate) FROM people;

SELECT birthtime, MONTHNAME(birthtime) FROM people;

SELECT birthtime, YEAR(birthtime) FROM people;

SELECT birthdate, MONTHNAME(birthdate) FROM people ORDER BY birthdate;

SELECT name, birthdt, YEAR(birthdt), MONTHNAME(birthdt) FROM people;