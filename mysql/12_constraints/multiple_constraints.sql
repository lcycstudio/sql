USE book_shop;

CREATE TABLE companies (
	name VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);

INSERT INTO companies (name, phone, address)
VALUES ('blackbird auto', '123', 'spruce');

INSERT INTO companies (name, phone, address)
VALUES ('luigis pies', '321', 'spruced');

SELECT * FROM companies;

CREATE TABLE houses (
	purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
    CONSTRAINT sell_higher CHECK(sale_price >= purchase_price)
);

INSERT INTO houses (purchase_price, sale_price) VALUES (100, 200);

INSERT INTO houses (purchase_price, sale_price) VALUES (300, 250);

SELECT * FROM houses;

DROP TABLE companies;
DROP TABLE houses;