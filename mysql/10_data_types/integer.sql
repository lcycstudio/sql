USE book_shop;

CREATE TABLE parent (children TINYINT);

INSERT INTO parent (children) VALUES (200);

INSERT INTO parent (children) VALUES (-3);

DROP TABLE parent;

