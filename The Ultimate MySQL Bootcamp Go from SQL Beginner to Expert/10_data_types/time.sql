USE book_shop;

SELECT name, birthtime, HOUR(birthtime) FROM people;

SELECT name, birthtime, MINUTE(birthtime) FROM people;

SELECT name, birthtime, SECOND(birthtime) FROM people;

SELECT birthdt, MINUTE(birthdt) AS 'brith hour' FROM people;

SELECT birthdt, DATE(birthdt), TIME(birthdt) FROM people;