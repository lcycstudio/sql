USE pet_shop;

CREATE TABLE unique_cats (
	cat_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

INSERT INTO unique_cats (cat_id, name, age)
VALUES (1, 'bingo', 2);

INSERT INTO unique_cats (name, age)
VALUES ('bingo', 2);

CREATE TABLE unique_cats2 (
	cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

CREATE TABLE unique_cats3 (
	cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

INSERT INTO unique_cats3 (name, age) VALUES ('Boingo', 1);
INSERT INTO unique_cats3 (name, age) VALUES ('Boingo', 1);

SELECT * FROM unique_cats3;