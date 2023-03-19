USE book_shop;

CREATE TABLE houses (
	purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
    CONSTRAINT sell_higher CHECK(sale_price >= purchase_price)
);

SELECT * FROM houses;

DESC houses;

ALTER TABLE houses
ADD CONSTRAINT positive_price CHECK (purchase_price >= 0);

INSERT INTO houses (purchase_price, sale_price)
VALUES (-1, 4);

ALTER TABLE houses
DROP CONSTRAINT positive_price;

INSERT INTO houses (purchase_price, sale_price)
VALUES (-1, 4);


INSERT INTO houses (purchase_price, sale_price)
VALUES (10, 11);

SELECT * FROM houses;