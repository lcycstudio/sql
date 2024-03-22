USE book_shop;

-- DECIMAL(total number of digits, digits after decimal)
-- DECIMAL(5, 2), e.g., 999.99

CREATE TABLE products (price DECIMAL(5, 2));

INSERT INTO products (price) VALUES (4.50);

SELECT * FROM products;

INSERT INTO products (price) VALUES (445.50);

INSERT INTO products (price) VALUES (5.503);

SHOW WARNINGS;

SELECT * FROM products;

DROP TABLE products;
