USE pet_shop;

CREATE TABLE cats3
(
	name VARCHAR(100) DEFAULT 'mystery',
    age INT DEFAULT 99
);

INSERT INTO cats3 (age) VALUES (2);
INSERT INTO cats3 () VALUES ();
INSERT INTO cats3 (name, age) VALUES (NULL, NULL);

SELECT * FROM cats3;
