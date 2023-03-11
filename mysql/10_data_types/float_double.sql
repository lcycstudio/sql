USE book_shop;

CREATE TABLE numbers (x FLOAT, y DOUBLE);

INSERT INTO numbers (x, y) VALUES (1.123, 1.123);
INSERT INTO numbers (x, y) VALUES (1.12345678, 1.12345678);

SELECT * FROM numbers;

DROP TABLE numbers;