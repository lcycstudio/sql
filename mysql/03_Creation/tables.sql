# Table, Header, Name, Type
CREATE DATABASE pet_shop;
USE pet_shop;

CREATE TABLE cats (
	name VARCHAR(50),
    age INT
);

CREATE TABLE dogs(
	name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);

SHOW TABLES;
SHOW COLUMNS FROM cats;
SHOW COLUMNS FROM dogs;

DESCRIBE cats;
DESC dogs;

DROP TABLE cats;
DROP TABLE dogs;