-- CREATE DATABASE pet_shop;
-- USE pet_shop;
-- CREATE TABLE cats(
-- 	name VARCHAR(50),
--     age INT
-- );
DESC cats;
INSERT INTO cats (name, age)
VALUES ("Blue Steel", 5);

INSERT INTO cats (name, age) VALUES ("Jenkins", 7);
INSERT INTO cats (age, name) VALUES (2, "Beth");
INSERT INTO cats (name, age)
VALUES	("Meatball", 5),
		("Turkey", 1),
		("Potato Face", 3);
SELECT * FROM cats;

