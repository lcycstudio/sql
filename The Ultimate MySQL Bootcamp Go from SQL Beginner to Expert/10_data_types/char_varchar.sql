-- CHAR VS VARCHAR
USE book_shop;

CREATE TABLE friends(name VARCHAR(10));

INSERT INTO friends (name) VALUES ('tom'), ('juan palo');

SELECT * FROM friends;

-- CHAR has a fixed length

CREATE TABLE states(abbr CHAR(2));

INSERT INTO states (abbr) VALUES ('CA'), ('NY');

SELECT * FROM states;

INSERT INTO states (abbr) VALUES ('x'), ('c');

SELECT CHAR_LENGTH(abbr) FROM states;

-- INSERT INTO states (abbr) VALUES ('Ohnio'); 
-- ERROR  1406 (22001): data too long for column 'abbr' at row 1

DROP TABLE friends;
DROP TABLE states;
