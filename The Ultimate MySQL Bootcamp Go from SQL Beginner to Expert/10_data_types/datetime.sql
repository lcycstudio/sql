USE book_shop;

CREATE TABLE people (
	name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '200-12-25 11:00:00');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

SELECT CURTIME();
SELECT CURRENT_DATE;
SELECT CURRENT_DATE();

SELECT CURDATE();
SELECT CURRENT_TIME;
SELECT CURRENT_TIME();

SELECT NOW();
SELECT CURRENT_TIMESTAMP;
SELECT CURRENT_TIMESTAMP();

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', CURDATE(), CURTIME(), NOW());

SELECT * FROM people;
