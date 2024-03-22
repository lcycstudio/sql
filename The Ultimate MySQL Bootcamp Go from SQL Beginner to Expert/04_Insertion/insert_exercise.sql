USE pet_shop;
CREATE TABLE people (
	first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);

INSERT INTO people (first_name, last_name, age)
VALUES ('Tina', 'Belcher', 13);
INSERT INTO people (first_name, last_name, age)
VALUES ('Bob', 'Belcher', 42);
INSERT INTO people (first_name, last_name, age)
VALUES 	('Linda', 'Belcher', 45),
		('Philip', 'Frond', 38),
		('Calvin', 'Fischoeder', 70);

SELECT * FROM people;

DROP TABLE people;