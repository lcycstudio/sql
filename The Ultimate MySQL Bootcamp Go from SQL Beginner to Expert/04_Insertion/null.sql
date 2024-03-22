USE pet_shop;

INSERT INTO cats (name, age) VALUES ('Todd');
INSERT INTO cats (name, age) VALUES ('Null');

CREATE TABLE cats2 (
	name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

INSERT INTO cats2 (name) VALUES ('Bilbo');
-- Field 'age' doesn't have a default value

INSERT INTO cats2 (name, age) VALUES ('Bilbo', 19);

DESC cats2;